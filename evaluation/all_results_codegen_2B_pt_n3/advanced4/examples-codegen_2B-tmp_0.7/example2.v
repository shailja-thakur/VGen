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


always @(*)
wire clk;
wire load;
wire ena;
wire [1:0] amount;
wire [63:0] data;
wire q[63:0]; 
always @(*)
  #5 1
  #5 3
  #5 5
  #5 7
  #5 9
  #5 11
  #5 13
  #5 15
  #5 17
  #5 19
  #5 21
  #5 23
  #5 25
  #5 27
  #5 29
  #5 31
  #5 33
  #5 35
  #5 37
  #5 39
  #5 41
  #5 43
  #5 45
  #5 47
  #5 49
  #5 51
  #5 53
  #5 55
  #5 57
  #5endmodule
