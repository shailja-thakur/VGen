// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always@(posedge clk)
begin
if(reset)
	begin
	out <= 0;
	end
else
	begin
	if(load)
	begin
	// load data to the register
	out <= data;
	end
	else
	begin
	// left shift the register value by amount
	out <= out << amount;
	end
	end
end
endmodule
