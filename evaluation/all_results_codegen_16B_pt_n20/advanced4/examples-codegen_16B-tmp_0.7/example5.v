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


// The implementation may or may not have a zero delay between writing and first readout, depending on the instruction.
// The delay from writing to readout is as long as the shift register clock period.
// The maximum shift register clock period is in the order of a few tens of nanoseconds.
// The interface offers a wide enough range of clock periods to allow for long delays, because
// the interface does not depend on the actual clock period.

// 7-bit arithmetic shift register.
// This is a shift register with a 7-bit data register and a 6-bit shift register.
// The shift register is not loaded after shift.
// For a description of the operation of the arithmetic shift register, see the advshift function.
assign q = {data[63:56], data[55:48], data[47:40], data[39:32], data[31:24], data[23:endmodule
