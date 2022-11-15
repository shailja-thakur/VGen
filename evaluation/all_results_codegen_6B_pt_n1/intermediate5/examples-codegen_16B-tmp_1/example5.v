// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always@(clk,reset,load)
	if(reset)
	begin
	out={};
	end
	else
	begin
	out[26*amount+7]=data[7];
	out[26*amount+6]=data[6];
	out[26*amount+5]=data[5];
	out[26*amount+4]=data[4];
	out[26*amount+3]=data[3];
	out[26*amount+2]=data[2];
	out[26*amount+1]=data[1];
	out[26*amount+0]=data[0];
	end	
endmodule
