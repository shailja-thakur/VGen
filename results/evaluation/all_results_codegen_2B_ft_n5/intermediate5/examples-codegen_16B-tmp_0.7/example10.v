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
	if (load)
	begin
	out = data;
	end
	else
	begin
	case(amount)
	1: out = {out[6:0],out[7]};
	2: out = {out[3:0],out[7:4]};
	3: out = {out[0],out[7:1]};
	endcase
	// to left shift the output by amount
	end
endmodule
