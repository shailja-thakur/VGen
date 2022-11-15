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


// This design is not particularly efficient.
// #define SHIFT_WHEN_LOAD 
// when ena is high, shift q.
// #define SHIFT_WHEN_LOAD2
// when ena is high, shift q.
// #define SHIFT_WHEN_LOAD3

always @(clk)
  if (clk == 1)
    ena = 1;
  else
    ena = 0;

always @(load)
  if (ena) 
    q = data;
  else
    q = 0;

always_comb
  if (load)
    q = q;
  else
    ena = 1;

#ifdef SHIFT_WHEN_LOAD
always @(clk)
  if (ena == 1 && clk == 1)
    ena = 0;
#endif

always @(endmodule
