#pragma once
class PCB;
typedef PCB* thread_t;
class BackSemaphore;
typedef BackSemaphore* sem_t;
typedef unsigned long time_t;
const int EOF = -1;
#include "../lib/hw.h"

#define MEM_ALLOC 0x01
void* mem_alloc(size_t size);

#define MEM_FREE 0x02
int mem_free(void*);

#define MEM_GET_FREE_SPACE 0x03
size_t mem_get_free_space();

#define MEM_GET_LARGEST_FREE_BLOCK 0x04
size_t mem_get_largest_free_block();

#define THREAD_CREATE 0x11
int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg);

#define THREAD_EXIT 0x12
int thread_exit();

#define THREAD_DISPATCH 0x13
void thread_dispatch();

#define THREAD_START 0x14
void thread_start(thread_t* handle);

#define SEM_OPEN 0x21
int sem_open(sem_t* handle, unsigned init);

#define SEM_CLOSE 0x22
int sem_close(sem_t handle);

#define SEM_WAIT 0x23
int sem_wait(sem_t id);

#define SEM_SIGNAL 0x24
int sem_signal(sem_t id);

#define TIME_SLEEP 0x31
int time_sleep(time_t);

#define GETC 0x41
char getc();

#define PUTC 0x42
void putc(char);