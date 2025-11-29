#pragma once
#include "PCB.hpp"

class BackSemaphore{
public:
    BackSemaphore(unsigned init = 1);
    ~BackSemaphore ();
    int wait ();
    int signal ();
    int tryWait();
    int get_val() {return val;}

    static void* operator new (size_t size) {
        size_t aligned = MEM_ALIGN(size);

        void* ptr = MemoryAllocator::allocate(aligned);
        return ptr;
    }

    static void operator delete (void* addr) {
        MemoryAllocator::deallocate(addr);
    }

    static int ident;
private:
    int id;
    int val;
    PCB* sem_queue;
    PCB* sem_queue_tail;
};