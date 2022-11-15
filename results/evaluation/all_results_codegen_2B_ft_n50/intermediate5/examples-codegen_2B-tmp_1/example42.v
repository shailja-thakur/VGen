// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
reg [7:0]sum;
always @(posedge clk, posedge reset)
begin
	if(reset)
	begin
	out<=8'b100011_0000;
	sum<=8'b100011_0000;
	end
	//
	else
	begin
	if (load ==1)
	begin
	out<= data;
	sum <=0;
	end
	else
	begin
out[4:0]=out[5:1];
out[7:5]=out[0];
out[0]=out[7:1];
end
sum=out[7]^out[2];
sum[5]=out[6]|out[3];
sum[6]=out[7]&out[0];
end
end
endmodule
