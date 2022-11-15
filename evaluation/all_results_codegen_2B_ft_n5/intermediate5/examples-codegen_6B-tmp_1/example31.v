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
	if(reset)
	out<=0;
	else if(load)
	out<=data;
	else 
	begin
	// if amount is 7 or more, shift left
	/*	if(amount<=6)
	begin	
	out = {out[6:0],out[7]};
	out[7:amount]=0;
	end */ 
	// if amount is less than 7, shift right
	/*	if(amount<=5)
	begin
	out = {out[0],out[7:1]};
	end */
	end
	end
endmodule
