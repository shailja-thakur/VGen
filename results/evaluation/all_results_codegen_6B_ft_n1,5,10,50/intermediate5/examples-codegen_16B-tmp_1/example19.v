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
// when amount = 0, do nothing
	if(amount == 0)
	// when load is high, add data to out
	if(load)
	out = out + data;
	// else, left shift previous value by 0 to the left
	else
	out = out << 0;
end
endmodule
