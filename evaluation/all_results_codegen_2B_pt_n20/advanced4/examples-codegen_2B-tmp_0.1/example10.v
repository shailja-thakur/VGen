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


// This is the output of the shifter.
reg [63:0] q;

// This is the input of the shifter.
reg [63:0] data;

// This is the clock input to the shifter.
reg clk;

// This is the clock input to the shifter.
reg ena;

// This is the clock input to the shifter.
reg [1:0] amount;

// This is the clock input to the shifter.
reg [63:0] data;

// This is the clock input to the shifter.
reg ena;

// This is the clock input to the shifter.
reg [1:0] amount;

// This is the clock input to the shifter.
reg [63:0] data;

// This is the clock input to the shifter.
reg enaendmodule
