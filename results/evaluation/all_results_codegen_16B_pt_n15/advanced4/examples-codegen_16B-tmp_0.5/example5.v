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


// The shift register is implemented as a 4-bit counter, with the
// four data bits being loaded in parallel into it. The counter
// is clocked by the rising edge of clock. The counter is incremented
// by a 1, and the counter is loaded with a 1 when the load signal
// is enabled. The counter is decremented by a 1 when the shift
// register is shifted right. The counter is decremented by a 1
// when the shift register is shifted left. The counter is loaded
// with a 1 when the enable signal is enabled. The counter is
// loaded with a 1 when the load signal is enabled.
//
// The shift register is implemented as a 4-bit counter, with the
// four data bits being loaded in parallel into it. The counter
// is clocked by the rising edge of clock. The counter is incremented
// by a 1, and the counter is loaded with aendmodule
