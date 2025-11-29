#include "../h/Scheduler.hpp"
#include "../lib/console.h"
#include "../h/BackSemaphore.hpp"
#include "../h/syscall_c.hpp"
#include "../test/printing.hpp"
extern "C" void supervisorTrap();
extern void userMain();

void f2(void* arg) {
    __putc('2');
}

void userMain_wrapper(void * noArg){
    userMain();
}
uint64 timerCounter = 0;
uint64 is_console = 0;

int main(){

    timerCounter = timerCounter;
    is_console = is_console;

    MemoryAllocator::mem_init();

    PCB::running = new PCB();
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(&supervisorTrap));
    __asm__ volatile("csrs sstatus, 0x02");
    void* stack = MemoryAllocator::allocate(MEM_ALIGN(sizeof(uint64)*DEFAULT_STACK_SIZE));
    PCB* userMain_thread = new PCB(&userMain_wrapper, nullptr, stack);
    userMain_thread->start();
    while(Scheduler::isEmpty() == false) {
         PCB::dispatch();
    }

    delete PCB::main_thread;
    delete userMain_thread;

    return 0;
}
