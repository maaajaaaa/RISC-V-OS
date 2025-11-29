#include "../h/Scheduler.hpp"

PCB* Scheduler::head = nullptr;
PCB* Scheduler::tail = nullptr;

void Scheduler::push(PCB* pcb) {
    pcb->next = nullptr;
    if (tail) {
        tail->next = pcb;
    } else {
        head = pcb;
    }
    tail = pcb;
}

PCB* Scheduler::getNext() {
    while (head != nullptr) {
        PCB* pcb = head;
        head = head->next;
        pcb->next = nullptr;

        if (!head) {
            tail = nullptr;
        }

        if (pcb->state != ThreadState::FINISHED) {
            return pcb;
        }

    }

    return nullptr;
}


bool Scheduler::isEmpty() {
    return head == nullptr;
}