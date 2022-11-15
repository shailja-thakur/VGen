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

    // Particularly important property: amount selects the pin-level to shift into,
    // so that shifting can be set "instantaneously".
    // (2'b00 is equivalent to 1bit_a, and 2'b11 is equivalent to 8bit_a)
    //
    // For a shift register, not all values of amount can be high at once.
    // For a shift register, not all values of amount can be high 
    // at once. If 0-shift is selected, the register has a default value 
    // and the shift register begins returning 0's. Shift registers can be 
    // unidirectional if clk remains low. The enable signal only affects 
    // the direction of the shift operation.
    // SRL input is ignored by the hardware when a full shift register is 
    // read immediately after start-up. However, there is no synchronous loadendmodule
