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



                
module min_comb();
// input min clock
// output is either neg(1) or 0. 
// for negative numbers, the shift register becomes (-1) to get the min.
operation min(input [23:0] x, int a);

module Maj_comb();
// input a clock and b clock
// output is a' or b'

full_adder ad1(a, b, carryin);
full_adder ad2(carryout, c, carryin, carryout, sum);
ring_adder rd(ad1, ad2, sum);
AXISRAM_64K ad1ram(rd);
AXISRAM_64K ad2ram;

function min_comb(min_clk, data_out);
      


endmodule
