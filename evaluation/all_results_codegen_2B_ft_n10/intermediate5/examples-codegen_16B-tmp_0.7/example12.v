// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk, posedge reset)
begin
	if(reset)
	begin
	// when reset is high, assign 0 to out
	out = 0;
	end
	else if(load)
	begin
	// when load is high, load data to out
	out = data;
	end
	else
	begin
	//when load is not high, perform rotation and left shift
	out = {out[6:0], out[7]}; // left shift
	out = {out[5:0], out[7:6]}; // rotate
	out = {out[4:0], out[7:5]};
	out = {out[3:0], out[7:4]};
	out = {out[2:0], out[7:3]};
	out = {out[1:0], outend
end
endmodule
