#pragma once
#include "../lib/hw.h"

#define TRUE 1
#define FALSE 0

#define MEM_ALIGN(byte_num) \
((byte_num) == 0 ? 0 : \
((byte_num) < 0 ? 0 : \
(((byte_num) / (MEM_BLOCK_SIZE)) == 0 ? 1 : \
(((byte_num) % (MEM_BLOCK_SIZE)) == 0 ? \
((byte_num) / (MEM_BLOCK_SIZE)) : \
((byte_num) / (MEM_BLOCK_SIZE)) + 1))))
