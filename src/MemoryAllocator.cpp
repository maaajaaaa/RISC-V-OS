#include "../h/MemoryAllocator.hpp"
#include "../lib/hw.h"
#include "../h/general.hpp"

void* MemoryAllocator::heap_start = nullptr;
void* MemoryAllocator::heap_end = nullptr;
BlockInfo* MemoryAllocator::head = nullptr;

void MemoryAllocator::mem_init() {

    heap_start = (void *)(((size_t)HEAP_START_ADDR + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE);
    heap_end = (void *)(((size_t)HEAP_END_ADDR) / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE);

    head = (BlockInfo*)(heap_start);

    head->block_size = (char*)(heap_end) - (char*)(heap_start) - sizeof(BlockInfo);
    size_t temp = head->block_size;
    temp= temp+ 1;
    head->is_free = TRUE;
    head->next = nullptr;
}

void* MemoryAllocator::allocate(size_t requestedSize) {
    size_t totalSize = requestedSize * MEM_BLOCK_SIZE + sizeof(BlockInfo);

    size_t alignedSize = (totalSize + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE;

    BlockInfo* current = head;
    while (current != nullptr) {
        if (current->is_free && current->block_size >= alignedSize) {
            if (current->block_size > alignedSize + sizeof(BlockInfo)) {
                BlockInfo* newBlock = (BlockInfo*)((char*)(current) + alignedSize);
                newBlock->block_size = current->block_size - alignedSize;
                newBlock->is_free = TRUE;
                newBlock->next = current->next;
                
                current->block_size = alignedSize;
                current->next = newBlock;
            }

            current->is_free = FALSE;

            void* ret = reinterpret_cast<char *>(current) + sizeof(BlockInfo);
            return ret;
        }

        current = current->next;
    }

    return nullptr;
}


int MemoryAllocator::deallocate(void* ptr) {
    if (!ptr) {
        return -1;
    }

    BlockInfo* block = (BlockInfo*)((char*)(ptr) - sizeof(BlockInfo));

    if (block < head || block >= heap_end) {
        return -1;
    }

    if (block->is_free) {
        return -1;
    }

    block->is_free = TRUE;

    BlockInfo* current = head;
    while (current) {
        if (current->is_free) {
            BlockInfo* next = current->next;
            while (next && next->is_free) {
                current->block_size += next->block_size + sizeof(BlockInfo);
                current->next = next->next;
                next = current->next;
            }
        }
        current = current->next;
    }

    return 0;
}

size_t MemoryAllocator::get_free_space() {
    size_t total = 0;
    BlockInfo* current = head;
    while (current) {
        if (current->is_free) {
            total += current->block_size;
        }
        current = current->next;
    }
    return total;
}


size_t MemoryAllocator::get_largest_free_block() {
    size_t largest = 0;
    BlockInfo* current = head;
    while (current) {
        if (current->is_free && current->block_size > largest) {
            largest = current->block_size;
        }
        current = current->next;
    }
    return largest;
}