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


// This is a part of experimental work, which might not be fully functional
// The purpose is to do some performance measurement of the hardware.
//
// Hardware configuration.
// Inputs:
// - clk: the clock signal.
// - load: the control signal for the shift register.
// - ena: the control signal for the shift register.
// - amount: an 8-bit control signal for the amount of shift.
// - data: an 8-bit control signal for the input of the shift register.
//
// Outputs:
// - q: the shifted output.

// The following hardware configuration is hard-coded into this module.
// The hardware is described here in an NDA.
// https://www.synopsys.com/docs/support/assembly/embedded/embedded_guide/embedded_guide_vct/embedded_guide_vct_endmodule
