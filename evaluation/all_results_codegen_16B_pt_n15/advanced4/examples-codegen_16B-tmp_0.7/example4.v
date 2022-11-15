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


// Note: Advanced arithmetic shifter can be used if the following is true:
//  1. All inputs are asynchronous-loaded.
//  2. All inputs are loaded and shifted before the shifter is enabled.
//  3. All inputs are loaded and shifted with the same delays.
//  4. The shifter is not clocked while the shifter is disabled.
//  5. The shifter is not clocked while the shifter is enabled.
//  6. The shifter is not clocked while the shifter is in pause mode.
//  7. The shifter is not clocked while the shifter is in burst mode.
//  8. There are only one or two inverters before the shifter.
//  9. The data input is not asynchronous-loaded.
// 10. The data input is not loaded while the shifter is disabled.
// 11. The data input isendmodule
