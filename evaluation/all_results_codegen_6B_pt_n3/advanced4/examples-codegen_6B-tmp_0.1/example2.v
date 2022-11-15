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
// The shift register is connected to the clock and data inputs.
// The clock is connected to the enable input.
// The enable input is connected to the output of the shift register.
// The output of the shift register is connected to the data inputs.
// The data inputs are connected to the clock inputs.
// The clock inputs are connected to the clock inputs.

// The following is a testbench for the shift register.
// The shift register is connected to the clock and data inputs.
// The clock is connected to the enable input.
// The enable input is connected to the output of the shift register.
// The output of the shift register is connected to the data inputs.
// The data inputs are connected to the clock inputs.
// The clock inputs are connected to the clock inputs.

// The following is a testbench for the shift register.
endmodule