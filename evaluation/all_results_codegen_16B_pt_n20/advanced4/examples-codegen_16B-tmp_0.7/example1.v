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



// input data[63:0] : data to shift left or right
// input ena : enable signal
// input [1:0] amount : amount to shift by
// input clk : clock signal
// output [63:0] : next shift value
// output load : load latch
// output ena : enable signal
// output [1:0] amount : amount to shift by 

// Architecture:
// The shifter design is a simple register shift register, with synchronous load.
// The shift register is latched by the enable signal.
// The load latch is a logic gate which gets the data from the bus when the enable signal goes high.
// This logic gate is a NOT gate, which inverts the data.
// The register data is shifted in by a left-shift or right-shift operation. 
// A left-shift operation shifts the data by 1 bit, while aendmodule
