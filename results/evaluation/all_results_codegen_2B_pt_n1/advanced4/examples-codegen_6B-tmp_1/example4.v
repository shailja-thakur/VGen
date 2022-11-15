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


module advshift_clk(long_reset, clk, arbresetn_clk, ena, load, enaload, loadcomplete, vlatch, q, agg_value_cycleclk, Vtask);
// vlatch are the valid bits extracted from register q when writes happen.
// agg_value_cycleclk is the cycle the register shift register is 
// signedlhaq_lane to generate a clock based on valid bits.
// 5'b100:  VLATCH & ARBRESETN inactive. 
// 5'b101:  64=MAX 2 pulses of write clock cycles to generate new sys clk. 
// 5'b110:  Bus synchronous if available. 
// 5'b111:  SYNC_ON WAIT if avail. 
// 64=ARGLENGTH =. 32 for adv arb shift reg.
//endmodule
