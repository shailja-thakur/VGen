// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk,reset)
begin
	if(reset)
	begin
	 out=0;
	 end
	else if(load)
	begin
	 out=data;
	 end
	else
	 begin
	 out = {out[6:0],out[7]};
	 out = {out[0],out[7:1]};
	 out = {out[1],out[7:2]};
	 out = {out[2],out[7:3]};
	 out = {out[3],out[7:4]};
	 out = {out[4],out[7:5]};
	 out = {out[5],out[7:6]};
	 out = {out[6],out[7]};
	 end
	end
endmodule