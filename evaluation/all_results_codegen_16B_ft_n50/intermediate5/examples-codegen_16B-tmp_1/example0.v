// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
initial
begin
	out = 8'b0;
end
always @(posedge clk or posedge reset)
begin
	if (reset)
	// when netreset goes high, reset all variables to default values
	begin
	out = 8'b0;
	end
	else
	begin
	if(load==1'b1)
	// load data to out
	begin
	out = data;
	end
	else
	begin
	//when load is low, reset all values and clear the out register
	out = out;
	end
	end
end
endmodule
