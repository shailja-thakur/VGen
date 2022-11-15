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


assign q = data; // copy data
assign rdy = 1'b1;
assign en = 1'b0, ena = 1'b0;

// synchronous reset: 
always @ (posedge rdy)
{
    ena = 0; // set en = 0 reset clock edge
    ena = 1;
}

// synchronous operation:
always
   clk <= clk.new; // clock in as the reset is timeout.
   ena <= en; // set en = 1 as soon as en or rdy is high.
   load <= en; // not needed, already true.
syn_load <= ena;
syn_ena <= en;
reg [63:0] q;

always @(posedge clk) 
{
wlk_clk <= clk;
while (enwa < en) // if canendmodule
