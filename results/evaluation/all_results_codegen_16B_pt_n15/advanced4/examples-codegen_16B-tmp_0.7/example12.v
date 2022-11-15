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


// construct shft_reg:
//    sreg = data[63:0]
//    q = sreg[amount]
// load: latch q with data[63:0].
// ena: enables operation of shifter.
// clk: clock source for shifter.
// 
// asm volatile ("sync\n"
//                "ldc r5, incr\n"
//                "ldc r6, load\n"
//                "ldc r7, ena\n"
//                "shft_reg: advshift r3, r6, r5, r7\n"
//                "swap r3, r4\n"
//                "swap r4, r5\n"
//                "swap r5, r6\n"
//                "swap r6, r7\n"endmodule
