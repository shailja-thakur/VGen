// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @*
if (load==1)
	out = data;
else
	begin
	out = {data[6:0],data[7]};
	out = {out[6:0],out[7:1]};
	out = {out[5:0],out[7]};
	out = {out[4:0],out[7]};
	out = {out[3:0],out[7]};
	end
endmodule
