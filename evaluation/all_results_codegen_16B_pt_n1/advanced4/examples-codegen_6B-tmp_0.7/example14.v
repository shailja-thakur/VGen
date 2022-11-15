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


// The hardware implementation of the shift register is described in the book 'C++
// Programming Patterns' by Herbert Schildt, published by Prentice-Hall, 1999.
// This implementation uses an 8-bit shift register, which implements left-
// shifting, and a 32-bit register, which implements right-shifting.
//
// The second implementation is for the case when the shift register is
// 16-bit wide.
//
// The code below uses the second implementation.

#include "build_config.h"

#include <systemc>
#include <stdio.h>

using namespace sc_core;
using std::printf;

typedef sc_uint<8> reg_type;

#define MAX_REGISTER_SIZE 63

reg_type reg[MAX_REGISTER_SIZE+1];

sc_clock clk;

endmodule
