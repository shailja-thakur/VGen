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


// *** IMPORTS ***
#include "regs.h"
#include "shift.h"

// *** DEFINES ***
#define shift_reg q
#define shift_load 0
#define shift_ena 1
#define shift_amount 0
#define shift_data 63

// *** FUNCTIONS ***
void advshift_init()
{
	// set the shifter clock to the clock of the PC
	PC_TARGET = PC_CLOCK;
	// set the shifter clock to the clock of the PC
	PC_SLICE = PC_CLOCK;
	// set the clock to the shifter clock
	PC_CTRL = PC_CLOCK;
	// set the shifter load to the clock of the PC
	PC_LOAD = PC_CLOCK;
	// set the shifter enable to the clock of the PC
	PCendmodule
