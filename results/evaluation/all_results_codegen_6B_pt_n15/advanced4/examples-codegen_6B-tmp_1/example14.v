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




//OSC clock = 84MHz =  4915199460141 MHz: the period can be set to return this.

register extern osc      wrk;


#include "FBC.h"
#include "IARRA.H"

//global array with all the read/result registers		

array textables(0 to textables_array_size-1);




/* expected stimulus is:
   data: levels[63:0]
   instance: c_2 // first instance
   compare: compare with
*/

// The stimulus, Z start

module pulse(input clk,
input active,
output reg inst,
output reg compare);

reg save;

module initializeReadAdvance(input clk,
input en,
output res);

function reset();



/*
 FUNCTION: initializeAdvance
 SUendmodule
