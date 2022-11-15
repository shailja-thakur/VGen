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


//#pragma pipeloop
//#pragma pipeloop_count = 16
//#pragma pipeloop_vector = 0
//#pragma pipeloop_vector = 1
//#pragma pipeloop_vector = 2
//#pragma pipeloop_vector = 3
//#pragma pipeloop_vector = 4
//#pragma pipeloop_vector = 5
//#pragma pipeloop_vector = 6
//#pragma pipeloop_vector = 7
//#pragma pipeloop_vector = 8
//#pragma pipeloop_vector = 9
//#pragma pipeloop_vector = 10
//#pragma pipeloop_vector = 11
//#pragma pipeloop_vector = 12
//#pragma pipeloopendmodule
