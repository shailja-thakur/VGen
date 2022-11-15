// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always@(posedge clk, negedge reset)
if(!reset)
begin
	out<= 8'b0;
end
else if(load)
begin
	out<= data;
end
else
begin
	out <={out[6:0],out[7]^out[0]^out[1]^out[2]^out[3]^out[4]^out[7]};
	if(amount==0 || amount==1 || amount==5 || amount==6 || amount==7 || amount==14)
	 out <={out[7:0],out[7]^out[0]^out[1]^out[2]^out[3]^out[4]^out[7]}; // to remove continuous xor for runtimes of 0,1,5,6,7 and 14
	else if(end
endmodule
