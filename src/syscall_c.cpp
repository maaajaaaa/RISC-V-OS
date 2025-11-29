#include "../h/syscall_c.hpp"
#include "../lib/hw.h"

void pass_parameters(uint64 func_num, uint64 p1=0, uint64 p2=0, uint64 p3=0) {
    if (p1) __asm__ volatile ("mv a1, %0" : : "r"(p1));
    if (p2) __asm__ volatile ("mv a2, %0" : : "r"(p2));
    if (p3) __asm__ volatile ("mv a3, %0" : : "r"(p3));
    __asm__ volatile ("mv a0, %0" : : "r"(func_num));
    __asm__ volatile ("ecall");
}

void* mem_alloc(size_t size){
    pass_parameters(MEM_ALLOC, size);
    void *ptr;
    __asm__ volatile ("mv %[read], a0" : [read] "=r" (ptr));
    return ptr;
}

int mem_free(void* ptr){
    pass_parameters(MEM_FREE, (uint64)ptr);
    int ret;
    __asm__ volatile ("mv %[read], a0" : [read] "=r" (ret));
    return ret;
}


size_t mem_get_free_space() {
    pass_parameters(MEM_GET_FREE_SPACE);
    int ret;
    __asm__ volatile ("mv %[read], a0" : [read] "=r" (ret));
    return ret;
}


size_t mem_get_largest_free_block() {
    pass_parameters(MEM_GET_LARGEST_FREE_BLOCK);
    int ret;
    __asm__ volatile ("mv %[read], a0" : [read] "=r" (ret));
    return ret;
}

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg){
    void* stack = mem_alloc(sizeof(uint64)*DEFAULT_STACK_SIZE);

    if (stack != nullptr) {
        pass_parameters(THREAD_CREATE, (uint64)start_routine, (uint64)arg, (uint64)stack);
        __asm__ volatile("mv %[param], a0":[param] "=r"(*handle));
        thread_start(handle);
        return 0;
    }

    return -1;
}

void thread_start(thread_t* handle){
    pass_parameters(THREAD_START, (uint64)*handle);
}

int thread_exit(){
    pass_parameters(THREAD_EXIT);
    int ret;
    __asm__ volatile ("mv %[read], a0" : [read] "=r" (ret));
    return ret;
}

void thread_dispatch(){
    pass_parameters(THREAD_DISPATCH);
}

int sem_open(sem_t* handle, unsigned init){
    pass_parameters(SEM_OPEN, (uint64)handle, (uint64)init);
    int ret;
    __asm__ volatile ("mv %[read], a0" : [read] "=r" (ret));
    return 0;
}

int sem_close(sem_t handle){
    pass_parameters(SEM_CLOSE, (uint64)handle);
    int ret;
    __asm__ volatile ("mv %[read], a0" : [read] "=r" (ret));
    return ret;
}

int sem_wait(sem_t id){
    pass_parameters(SEM_WAIT, (uint64)id);
    int ret;
    __asm__ volatile ("mv %[read], a0" : [read] "=r" (ret));
    return ret;
}

int sem_signal(sem_t id){
    pass_parameters(SEM_SIGNAL, (uint64)id);
    int ret;
    __asm__ volatile ("mv %[read], a0" : [read] "=r" (ret));
    return ret;
}

char getc() {
    pass_parameters(GETC);
    char ret;
    __asm__ volatile ("mv %[read], a0" : [read] "=r" (ret));
    return ret;
}

void putc(char c){
    pass_parameters(PUTC, (uint64)c);
}

int time_sleep(time_t t) {
    pass_parameters(TIME_SLEEP, (uint64)t);
    int ret;
    __asm__ volatile ("mv %[read], a0" : [read] "=r" (ret));
    return ret;
}