#include "../h/BackSemaphore.hpp"
#include "../h/Scheduler.hpp"
int BackSemaphore::ident = 0;

BackSemaphore::BackSemaphore(unsigned init){
    id = ident++;
    val = init;
    sem_queue = nullptr;
    sem_queue_tail = nullptr;
}

BackSemaphore::~BackSemaphore() {
    PCB* current = sem_queue;

    while (current != nullptr) {
        PCB* next = current->next;

        current->state = ThreadState::READY;
        Scheduler::push(current);

        current = next;
    }

    sem_queue = nullptr;
    sem_queue_tail = nullptr;

}


int BackSemaphore::wait() {
    this->val = this->val - 1;

    if (this->get_val() < 0) {
        if (sem_queue == nullptr) {
            sem_queue = PCB::running;
            sem_queue_tail = PCB::running;
        } else {
            sem_queue_tail->next = PCB::running;
            sem_queue_tail = PCB::running;
        }

        PCB::running->state = ThreadState::BLOCKED;

        PCB::dispatch();

        return 0;
    }


    return 0;
}


int BackSemaphore::signal() {
    this->val = this->val + 1;
    if (this->val <= 0 && sem_queue != nullptr) {
        PCB* pcb = sem_queue;

        sem_queue = sem_queue->next;

        if (sem_queue == nullptr) {
            sem_queue_tail = nullptr;
        }
        pcb->state = ThreadState::READY;
        Scheduler::push(pcb);
    }

    return 0;
}


int BackSemaphore::tryWait(){
    if (this->val > 0) {
        this->val = this->val - 1;
        return 0;
    }

    if (this->val <= 0) {
        return 1;
    }

    return -1;
}
