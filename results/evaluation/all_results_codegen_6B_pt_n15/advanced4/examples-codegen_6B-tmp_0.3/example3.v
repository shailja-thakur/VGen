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


// The following code is not optimized for speed.
// The code is intended to demonstrate the basic principles of the
// shift register.

always @(posedge clk or negedge load)
  if (load)
  {
    if (amount == 0)
    {
      q <= data;
    }
    else if (amount == 1)
    {
      q <= data[63:0];
    }
    else if (amount == 8)
    {
      q <= data[63:0] >> 8;
    }
    else if (amount == 9)
    {
      q <= data[63:0] >> 9;
    }
    else if (amount == 10)
    {
      q <= data[63:0] >> 10;
    }
    else if (amount == 11)
    {
      q <= data[endmodule
