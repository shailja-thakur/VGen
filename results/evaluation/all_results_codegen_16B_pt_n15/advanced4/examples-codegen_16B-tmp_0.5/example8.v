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


// The shift register is implemented as a simple register that is loaded with data on the rising edge of the clock.
// The register is shifted on the rising edge of the clock.
// The shift register is loaded with data on the rising edge of the clock.
// The shifter can shift both left and right, and by 1 or 8 bit positions, selected by amount.
// The shifter can be loaded with data on the rising edge of the clock.
// The shifter can be enabled and disabled by the enable signal.
// The shifter can be reset by the reset signal.
// The shifter can be clocked by the clock.
// The shifter can be clocked by the load signal.
// The shifter can be clocked by the enable signal.
// The shifter can be clocked by the reset signal.
// The shifter can be clocked by the clock.
// The shifter can beendmodule
