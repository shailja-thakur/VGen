// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always @ (posedge clk or posedge reset)
	if (reset==1) out <= 0;
	else if (load == 1) out <= data;
	else 
	begin
// rotation
// first, calculate the remainder
	out = out << amount;
// then, subtract the carry (borrow)
	out = (out) - 8'h01;
// position
	out = out >> amount;
	end
endmodule
