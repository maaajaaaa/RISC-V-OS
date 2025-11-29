#ifndef PCB_HPP
#define PCB_HPP

#include "../h/MemoryAllocator.hpp"
#include "general.hpp"

enum class ThreadState {
    NEW,
    READY,
    RUNNING,
    BLOCKED,
    FINISHED,
};
class PCB {
public:
    PCB(void (*start_routine)(void*) = nullptr, void* arg = nullptr, void* stack = nullptr);

    ~PCB();

    void init(void (*start_routine)(void*), void* arg, void* stack);
    static void run_thread_body();
    void start();
    static void dispatch();
    static void exit();

    ThreadState state;
	int id;
	static int ident;
    void (*body)(void*);
    void* argument;
    uint64* stackPointer;
    uint64* returnAddress;
    PCB* next;

    static PCB* running;
    static PCB* main_thread;

    static void* operator new (size_t size) {
        size_t aligned = MEM_ALIGN(size);
        void* ptr = MemoryAllocator::allocate(aligned);
        return ptr;
    }

    static void operator delete (void* addr) {
        MemoryAllocator::deallocate(addr);
    }

private:
    void* stackSpace;
};



#endif

