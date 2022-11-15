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


always_comb
  #(1'b0)
  if (ena) q = data[63 : 62 : 1]
  else
    #(1'b0)
    if (amount[0] == 2'b00) q = data[63 : 58 : 1]
    else if (amount[0] == 2'b01) q = data[63 : 56 : 1]
    else if (amount[0] == 2'b10) q = data[63 : 54 : 1]
    else if (amount[0] == 2'b11) q = data[63 : 52 : 1]
    else q = data[63 : 58 : 1]

always_comb
  #(1'b0)
  if (ena) q = data[59 : 56 : 1]
  else
    #(1'b0)
    if (amountendmodule
