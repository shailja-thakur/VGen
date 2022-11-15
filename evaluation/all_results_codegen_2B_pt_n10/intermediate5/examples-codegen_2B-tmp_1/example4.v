// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
assign load_clk = ~load & clk;
assign load_reset = ~load & reset;

assign out = ~(data & amount) + data;

#4 "transparent.v"
#1 "transparent.v"
#10 "transparent.v"
#1 "main.v"
#10 "main.v"
endmodule
