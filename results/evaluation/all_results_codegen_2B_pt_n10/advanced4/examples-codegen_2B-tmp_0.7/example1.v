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


// Receive clock and load signal.
sig clk = clock;
sig ena = ena;
sig enb = enb;
sig data = data;
// Left shift the loaded data by amount bits.
reg [63:0] q;
sig [63:0] tmp;

always @(posedge clk)
  if (ena && enb && data[63:0] > 0)
    q[63:0] = data[63:0] << amount;


// Output a constant.
always @(posedge clk)
  if (ena && enb && data[63:0] > 0)
    q[63:0] = q[63:0] << amount;

always @(posedge clk)
  if (ena && enb && data[63:0] > 0)
    endmodule
