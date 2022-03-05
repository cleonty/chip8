#include <assert.h>
#include "chip8memory.h"

static void chip8_is_memory_in_bounds(int index)
{
  assert(index >= 0 && index < CHIP8_MEMORY_SIZE);
}

void chip8_memory_set(struct chip8_memory *memory, int index, unsigned char val)
{
  assert(index >= 0 && index < CHIP8_MEMORY_SIZE);
  memory->memory[index] = val;
}

unsigned char chip8_memory_get(struct chip8_memory *memory, int index)
{
  assert(index >= 0 && index < CHIP8_MEMORY_SIZE);
  return memory->memory[index];
}