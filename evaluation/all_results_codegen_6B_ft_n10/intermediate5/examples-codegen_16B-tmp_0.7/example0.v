// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @ (posedge clk or posedge reset)
begin
if (reset)
	out = 8'b0000_0000;
else if (load)
	out = data;
else begin
	left_shift(out,amount);
	out = out << amount;
end
end
function [7:0] left_shift(in,shift);
input [7:0] in;
input [2:0] shift;
begin
left_shift = in << shift;
end
endfunction
endmodule
