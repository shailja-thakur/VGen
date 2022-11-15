// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always @(posedge clk)
begin
	if(reset)
	begin
	out = data;
	end
	if(load)
	begin
	out[7:3] <= data[7:3];
	out[2:0] <= out[7:3]<<amount;
	end
	end
endmodule
