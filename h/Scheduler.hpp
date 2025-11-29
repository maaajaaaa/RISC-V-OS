#ifndef SCHEDULER_HPP
#define SCHEDULER_HPP

#include "PCB.hpp"

class Scheduler {
public:
    static void push(PCB* pcb);
    static PCB* getNext();
    static bool isEmpty();

private:
    static PCB* head;
    static PCB* tail;
};

#endif
