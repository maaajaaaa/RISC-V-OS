#include "../h/PCB.hpp"
#include "../h/Scheduler.hpp"


int PCB::ident = 0;
PCB* PCB::running = nullptr;
PCB* PCB::main_thread = nullptr;

PCB::PCB(void (*start_routine)(void*), void* arg, void* stack){
    init(start_routine, arg, stack);
}


PCB::~PCB() {
    if (stackSpace) {
        MemoryAllocator::deallocate(stackSpace);
    }
}

#define STACK_SLOTS 20
void PCB::init(void (*start_routine)(void*), void* arg, void* stack){
    this->state = ThreadState::NEW;
	this->id = ident++;
    if(this->id == 0) {
        PCB::main_thread = this;
    }
    this->body = start_routine;
    this->argument = arg;
    this->stackSpace = stack;
    this->stackPointer = stack != nullptr ? (uint64*)((uint8*)stackSpace + DEFAULT_STACK_SIZE) : 0;
    this->returnAddress = start_routine != nullptr ? (uint64*)&run_thread_body : 0;

}

void PCB::start(){

    if (this->body != nullptr){
        state = ThreadState::READY;
        Scheduler::push(this);
    }
}
extern "C" void contextSwitch();

void PCB::dispatch(){
    PCB *old = running;
    if (old != nullptr && (old->state == ThreadState::RUNNING)) {
        old->state = ThreadState::READY;
        Scheduler::push(old);
    }

    running = Scheduler::getNext();
    if (running == nullptr) {
        running = PCB::main_thread;
    }
    running->state = ThreadState::RUNNING;


    __asm__ volatile ("mv a3, %[p]"::[p]"r"(&running->stackPointer));
    __asm__ volatile ("mv a2, %[p]"::[p]"r"(&running->returnAddress));
    __asm__ volatile ("mv a1, %[p]"::[p]"r"(&old->stackPointer));
    __asm__ volatile ("mv a0, %[p]"::[p]"r"(&old->returnAddress));
    contextSwitch();

}

void popspp() {
    uint64 mask = 1 << 8;
    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile ("csrc sstatus, %[mask]" :: [mask] "r"(mask));
    __asm__ volatile ("sret");
}

void PCB::run_thread_body(){
    popspp();


    running->body(running->argument);
    /*PCB::exit();*/
    running->state = ThreadState::FINISHED;
    __asm__ volatile ("ecall");
    //dispatch();

}

void PCB::exit() {
    running->state = ThreadState::FINISHED;
    dispatch();
}