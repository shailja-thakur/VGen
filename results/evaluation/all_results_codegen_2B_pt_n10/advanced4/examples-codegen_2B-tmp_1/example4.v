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


input store[(8-1):0] clock;
input [3:0] data;
input ena;

reg [31:0] q; // leftmost bits of register output data.

always @always 
{
  if (clock == kernel_clk) 
    ena = 0;
}

assign data4_69 = data[28'592'772];
assign q[63:0] = data4_69[31';63'] ;

always @always 
{
  if ((ena | stored) && (stored & 0x10)) 
    q <<= 1;
  else if (ena)
    ena = 0;
}

always @ever.
{
  if (ena & store[63:32]) 
    data4_69 <<= (32 - amount);
  else 
    enaendmodule
