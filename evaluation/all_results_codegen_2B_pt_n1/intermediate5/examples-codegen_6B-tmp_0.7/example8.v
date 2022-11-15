// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
reg [7:0] out = data;
always @(posedge clk or negedge reset)
	if (load)
	// load data into out register
		out = data;
	else
	// rotate the out register
		out = (out << amount[1:0]) | (out >> (32 - amount[1:0]));
endmodule
