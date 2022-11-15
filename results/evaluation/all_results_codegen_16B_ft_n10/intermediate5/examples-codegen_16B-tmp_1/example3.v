// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
// this creates the following left shift and rotation operations simulatenously
always @ (posedge clk)
begin
if (reset == 1'b1)
	out = 8'b00000000;
else if (load == 1'b1)
	out = data;
else
begin
out = out << amount;
out = out >> amount;
end
end
endmodule
