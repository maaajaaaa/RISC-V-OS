#pragma once
#include "../lib/hw.h"

struct BlockInfo{
    struct BlockInfo* next;
    size_t block_size;
    int is_free;
};


class MemoryAllocator {
private:
    static void* heap_start;
    static void* heap_end;
    static BlockInfo* head;

public:
    static void mem_init();
    static void* allocate(size_t requestedSize);
    static int deallocate(void* pointer);
    static size_t get_free_space();
    static size_t get_largest_free_block();
};

