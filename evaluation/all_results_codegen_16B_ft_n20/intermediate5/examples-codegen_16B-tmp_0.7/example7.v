// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always @ (posedge clk)
begin
if (reset)
	out = data;
else if (load)
	out = data;
else
begin
	if (amount == 0)
	out = data;
	else if (amount == 1)
	out = {data[6:0],data[7]};
	else if (amount == 2)
	out = {data[7:0],data[7],data[7],data[6]};
	else if (amount == 3)
	out = {data[7:0],data[7],data[6:0],data[7]};
	else if (amount == 4)
	out = {data[7:0],data[6:0],data[7:0]};
	else if (amount == 5)
	out = {data[7:0],data[6end
end
endmodule
