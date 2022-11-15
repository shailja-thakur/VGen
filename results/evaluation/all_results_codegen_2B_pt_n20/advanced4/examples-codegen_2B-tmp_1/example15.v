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


// Pure code, no ram.
// wireless advshift
class advshift {
// SREG
// 32k clock
	// RS
	// [0] 2'b11:bit no lsb access in shifter mode, wire clk serial input
	// [1] 2'b1x:2MSB as clock, other bits 0 (aka serial input)
	// [2] 2'b0: enable/disable shifter pre 16b
	// [3:4] 12bit shifter multiplexer
	// [5:7] 12bits shifter register address counter
	// [8:9] 2'b11:4MSB as clock, other bits 0 (always 0)
	// [10:17] 2'b1x:4LSB as clock, other bits 0 (0x11 - 1+ 2'b00)
	// [20:22endmodule
