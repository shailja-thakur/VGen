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


// ------------------------------------------------------------
//  Top-level Module
// ------------------------------------------------------------
module top(input clk,
input load,
input ena,
input [63:0] data,
output reg [63:0] q);
// when load is high, assign data[63:0] to shift register q.
// if ena is high, shift q.


// ------------------------------------------------------------
//  Module instantiation and simulation
// ------------------------------------------------------------
top top1(clk, load, ena, data, q);
top top2(clk, load, ena, data, q);
top top3(clk, load, ena, data, q);
top top4(clk, load, ena, data, q);
top top5(clk, load, ena, data, q);
top top6(clk, load, ena,endmodule
