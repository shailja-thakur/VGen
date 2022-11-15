// Design a 64-bit arithmetic shift register, with synchronous load. 
// The shifter can shift both left and right, and by 1 or 8 bit positions, selected by amount.
module advshift(input clk,
input load,
input ena,
input [1:0] amount,
input [63:0] data,
output reg [63:0] q); 
// when load is high, assign data[63:0] to shift register q.
// if ena is high, shift q.
// amount: Chooses which direction and how much to shift.
// 2'b00: shift left by 1 bit.
// 2'b01: shift left by 8 bits.
// 2'b10: shift right by 1 bit.
// 2'b11: shift right by 8 bits.


#include "pm.h"
#include "advance_shift_register.h"

// Shift register is 64 bits
#define R_BITS 64

// Offsets
#define SHIFT_LEFT_BITS   0 // Shift left by 1 bit
#define SHIFT_LEFT_BYTES  1 // Shift left by 8 bits.
#define SHIFT_RIGHT_BITS  2 // Shift right by 1 bit.
#define SHIFT_RIGHT_BYTES 3 // Shift right by 8 bits.

#define SHIFT_MASK       0x3

// When shift register is full, load is high.
#define SHIFT_FULL       1
// When shift register is empty, load is low.
#define SHIFT_EMPTY      0

int main(void)
{
  bool load = high;
  bool enendmodule
