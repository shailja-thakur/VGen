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


reg [64:0] r=0;
always @(*AIO_CLK) clk = 1'b0;
reg clks=0;
always @(*AIO_CLK) ena = 1'b0;
always @(*AIO_ENA) ena = 1'b0;
reg [63:0] q=0;
always @(*IORQ0) q(read r),rrd(q),qwr(q);


always @(*AIO_CLK) ena = 1'b0;
always @(*AIO_CLK) clks = clk;
// counter to keep track of the number of clocks needed between our writes to q and qwr.
reg clcnt=0;
always @(*AIO_CLK) clke=1'b0;
always @(*AIO_CLKSIG) clksendmodule
