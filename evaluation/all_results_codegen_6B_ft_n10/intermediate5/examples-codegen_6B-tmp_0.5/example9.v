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
	begin
	if (load)
	out = data;
	else begin
	// if amount is less than 0, do nothing
	if (amount < 0)
	out = out;
	else begin
	// shift the data left by amount
	out = {out[6:0],out[7]};
	// rotate the data right by amount
	end
	end
	end
endmodule
