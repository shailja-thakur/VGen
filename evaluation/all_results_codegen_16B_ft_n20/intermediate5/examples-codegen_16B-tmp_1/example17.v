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
begin: left_rotate
if (reset) begin
	// when reset is high, set all bits to zero
	out = 8'h00;
	end
	else
	begin
	if (load)
	// value is input to data
	begin
	out = data;
	// left shift out by amount bits
	out = out << amount; 
	end 
	else begin
	// keeping bits from left shift
	out = out << amount;
	// rotating from the right
	out = out >> amount;
	end
	end
end
endmodule
