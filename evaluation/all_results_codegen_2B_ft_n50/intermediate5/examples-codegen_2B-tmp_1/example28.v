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
begin
	if(load == 1'b1)
	begin
	out = data;
	end
	else
	begin
	out = {1'b0,out[7:1]};
	for(i=0;i<7;i=i+1)
	begin
	out[i] = out[i+3];
	end
	end
end
endmodule
