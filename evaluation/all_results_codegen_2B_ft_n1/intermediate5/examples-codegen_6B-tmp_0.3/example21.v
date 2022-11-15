// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or posedge reset)
	begin
	if (reset)
	out <= 0;
	else if (load)
	out <= data;
	else begin
	// do the left shift first
	out = {out[6:0],out[7]};
	// then rotate
	out = {out[2:0],out[3:3],out[4:4],out[5:5],out[6:6],out[7:7]};
	end
	end
endmodule
