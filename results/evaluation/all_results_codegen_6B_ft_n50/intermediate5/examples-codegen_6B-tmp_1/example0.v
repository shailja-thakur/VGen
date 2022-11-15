// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk)
if (load | reset)
	out = data;
else if (out[amount:1] | reset)
	out = {out[6:0], out[7]}; // don't care about overflow, this is nodivider so it shouldn't happen
endmodule
