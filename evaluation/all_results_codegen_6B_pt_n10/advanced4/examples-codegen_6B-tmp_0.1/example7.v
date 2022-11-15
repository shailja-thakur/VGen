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


// The following is a testbench for the shift register.
// The shift register is connected to the clock input.
// The clock input is connected to the clock input of the shift register.
// The shift register is connected to the data input.
// The data input is connected to the data output of the shift register.
// The shift register is connected to the enable input.
// The enable input is connected to the enable output of the shift register.
// The enable output is connected to the enable input of the shift register.
// The enable input is connected to the reset input of the shift register.
// The reset input is connected to the reset output of the shift register.
// The reset output is connected to the reset input of the shift register.
// The reset output is connected to the reset input of the shift register.
// The reset output is connected to the reset input of the shift register.
// The reset output is connectedendmodule
