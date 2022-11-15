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


reg [63:0] q;
reg [63:0] data;
reg [63:0] shift_reg;
reg [63:0] shift_reg_out;

always @(posedge clk)
  if (ena)
    q = data[63:0]
  else
    q = 0
  if (load)
    shift_reg = data[63:0]
  else
    shift_reg = 0
  if (ena)
    shift_reg_out = shift_reg
else
    shift_reg_out = 0

always @(posedge clk)
  if (ena)
    q = q + shift_reg_out
  else
    q = 0
endmodule
