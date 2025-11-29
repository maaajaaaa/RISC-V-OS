#include "../h/syscall_c.hpp"
#include "../h/asm_to_c.hpp"
#include "../h/PCB.hpp"
#include "../h/BackSemaphore.hpp"
#include "../lib/console.h"
#include "../test/printing.hpp"

extern uint64 timerCounter;
extern uint64 is_console;

extern "C" void handleSupervisorTrap(){
    uint64 volatile scause;
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL) {
        uint64 volatile f = r_a0();
        uint64 volatile sepc = r_sepc() + 4;
        uint64 volatile sstatus = r_sstatus();


        switch (f) {
            case MEM_ALLOC: {
                size_t a1 = 0;
                __asm__ ("mv %[a1], a1" : [a1] "=r"(a1));
                void* addr = MemoryAllocator::allocate(a1);
                __asm__ ("mv a0, %0" : : "r"(addr));
                break;
            }
            case MEM_FREE: {
                void* a2;
                __asm__ ("mv %[a2], a1" : [a2] "=r"(a2));
                int ret = MemoryAllocator::deallocate(a2);
                __asm__ ("mv a0, %0" : : "r"(ret));
                break;
            }
            case MEM_GET_FREE_SPACE: {
                size_t ret = MemoryAllocator::get_free_space();
                __asm__ ("mv a0, %0" : : "r"(ret));
                break;
            }
            case MEM_GET_LARGEST_FREE_BLOCK: {
                size_t ret = MemoryAllocator::get_largest_free_block();
                __asm__ ("mv a0, %0" : : "r"(ret));
                break;
            }
            case THREAD_CREATE: {
                void (*body)(void*) = nullptr;
                void* arg;
                void* stack;
                __asm__ ("mv %[p], a1" : [p] "=r"(body));
                __asm__ ("mv %[p], a2" : [p] "=r"(arg));
                __asm__ ("mv %[p], a3" : [p] "=r"(stack));
                PCB *pcb = new PCB(body, arg, stack);
                __asm__ ("mv a0, %[p]"::[p]"r"(pcb));
                break;
            }
            case THREAD_EXIT: {
                PCB::exit();
                int ret = 0;
                __asm__ ("mv a0, %0" : : "r"(ret));
                break;
            }
            case THREAD_DISPATCH: {
                PCB::dispatch();
                int ret = 0;
                __asm__ ("mv a0, %0" : : "r"(ret));
                break;
            }
            case THREAD_START: {
                void* handle;
                __asm__ ("mv %[p], a1" : [p] "=r"(handle));
                ((PCB*)handle)->start();
                break;
            }
            case SEM_OPEN: {
                int init = 1;
                sem_t* handle;
                __asm__ ("mv %[p], a1" : [p] "=r"(handle));
                __asm__ ("mv %[p], a2" : [p] "=r"(init));
                *handle = new BackSemaphore(init);
                int ret = handle ? 0 : -1;
                __asm__ ("mv a0, %[p]"::[p]"r"(ret));
                break;
            }
            case SEM_CLOSE: {
                sem_t handle;
                __asm__ ("mv %[p], a1" : [p] "=r"(handle));
                delete handle;
                __asm__ ("mv a0, %[p]"::[p]"r"(0));
                break;
            }
            case SEM_WAIT: {
                sem_t handle;
                __asm__ ("mv %[p], a1" : [p] "=r"(handle));
                int ret = handle->wait();
                __asm__ ("mv a0, %[p]"::[p]"r"(ret));
                break;
            }
            case SEM_SIGNAL: {
                sem_t handle;
                __asm__ ("mv %[p], a1" : [p] "=r"(handle));
                int ret = handle->signal();
                __asm__ ("mv a0, %[p]"::[p]"r"(ret));
                break;
            }
            case GETC: {
                is_console = 1;
                char c = __getc();
                __asm__ ("mv a0, %[p]"::[p]"r"(c));
                is_console = 0;
                break;
            }
            case PUTC: {
                is_console = 1;
                char c;
                __asm__ ("mv %[p], a1" : [p] "=r"(c));
                __putc(c);
                is_console = 0;
                break;
            }
            default:{
              timerCounter = 0;
              PCB::dispatch();
            };
        }
        __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
        __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));

    } else if (scause == 0x8000000000000001UL)
    {
        if (is_console == 0) {
            timerCounter++;
            if (timerCounter >= DEFAULT_TIME_SLICE) {

                uint64 sepc = r_sepc();
                uint64 sstatus = r_sstatus();
                timerCounter = 0;
                PCB::running->dispatch();
                __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
                __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));

            }
        }
        mc_sip(SIP_SSIP);
    } else if (scause == 0x8000000000000009UL)
    {
        uint64 sepc = r_sepc();
        uint64 sstatus = r_sstatus();
        console_handler();
        __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
        __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    }
    else{
        printString("ERROR : unexpected trap cause\nscause: ");
        printInt(scause); printString("\n");
    }

}