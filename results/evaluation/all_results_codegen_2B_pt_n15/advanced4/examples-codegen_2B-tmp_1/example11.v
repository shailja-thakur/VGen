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


` const clockWidth = 64
const shiftWidth = 64
const shiftInputWidth = 7 
const shiftWeights = 4
const shiftS = 33


func conv() {
	// Created by seden
	data := buffer(dataInput)
	
	// hack. since this is designed for reset. So if ler > 16 then we have to shift it downwards.
	// todo: use a shift instead of a load (for backwards compatibility).
	// also a memory read
	switch(dataLen) {
		case 16:
			data = data[0:16]	
		case 20:	// works because bitarrays are twin-encumbered.	
			// data[...] += data[...] + 1
			data = append(data, copy(data[:])...)
			data = append(data, 1)	
		case 24:
			data = rightendmodule
