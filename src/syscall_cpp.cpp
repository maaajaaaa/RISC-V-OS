#include "../h/syscall_cpp.hpp"
#include "../lib/console.h"

void* operator new (size_t size){
    return mem_alloc(size);
}
void operator delete (void* ptr){
    mem_free(ptr);
}

Thread::Thread(void (*body)(void*), void* arg){
    thread_create(&myHandle, body, arg);
}

void wrapper(void* t) {
    if (t) {
        ((Thread*)t)->run();
    }
}

Thread::Thread(){
    thread_create(&myHandle, &wrapper, this);
}

Thread::~Thread(){
    operator delete(&myHandle);
}

int Thread::start(){
    thread_start(&myHandle);
    return 0;
}

void Thread::dispatch(){
    thread_dispatch();
}

int Thread::sleep (time_t) {
    return 0;
}


Semaphore::Semaphore(unsigned init){
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore(){
    sem_close(myHandle);
}

int Semaphore::wait(){
    return sem_wait(myHandle);
}

int Semaphore::signal(){
    return sem_signal(myHandle);
}

char Console::getc () {
    return __getc();
}
void Console::putc (char c) {
    __putc(c);
}

