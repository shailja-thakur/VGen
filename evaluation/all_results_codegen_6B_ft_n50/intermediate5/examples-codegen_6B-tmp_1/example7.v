// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always@(posedge clk or posedge reset)
	begin
	if(reset)
	out<=0;
	else if(load)
	out<=data;
	else
	begin
	extended[2:0]=amount[2:0];
	extended[5:3]=amount[5:3];
	extended[6]=load;
	extended[7]=1'b0;
	out<={out[6:0],extended[7]};
	end
	end
endmodule
