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


// shift amount is always in [0,8].
wire shift_amount;

wire shift_ena;

// data is always in [0,63].
wire data;

reg [63:0] q;

always @(posedge clk)
{
  if (ena && load)
    q = data[63:0];
  else
    q = 0;
  
  shift_amount = amount[5];
  
  if (shift_amount == 0) // if shift amount is 0, don't do this.
    q = q << 1; // shift left.
  else if (shift_amount == 1) // if shift amount is 1, don't do this.
    q = q >> 1; // shift right.
  else if (shift_amount == 8) // if shift amount is 8, don't do this.
    q =endmodule
