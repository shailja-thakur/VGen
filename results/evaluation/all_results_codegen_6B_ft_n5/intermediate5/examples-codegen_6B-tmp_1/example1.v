// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or posedge areset)
begin
	if (areset) 
	begin
	out = 8'b00000000;
	end
	if (load)
	begin
	out = data;
	end
	else 
	begin
	if (amount == 3'b111)
	out = 8'b00000000;
	else
	begin
	//$display($time," amount = %b",amount);
	//$display($time," ROTATE");
	out = {out[0],out[7:1]};
	end
	end
	end
endmodule
