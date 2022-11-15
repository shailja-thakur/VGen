// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
wire out;
always @(load)
(*(1'b1)) out = data;
always @(clk,reset)
(*(1'b0)) out = data;
always @(clk,reset,amount)
(*(1'b0)) out = (0 << amount) & data;
always @(clk,reset,amount)
(*(1'b1)) out = (1 << amount) & data;
always @(clk,reset,load)
(*(1'b1)) out = 0;

// right shift operation
module right_shift(clk,reset,shift);
input clk,reset;
input [1:0] shift;
output [7:0] out;
// when shift is non-zero, the out register contains the data shifted by the shift bits
always @(clk,reset,shift)
(*endmodule
