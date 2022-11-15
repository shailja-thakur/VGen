// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always @ (posedge clk, negedge reset)
begin
	if (reset == 0)
	begin
	// when reset is low, reset out to 0
	out <= 8'b0;
	end
	else if (load)
	begin
	// when load is high, load data to out
	out <= data;
	end
	else
	begin
	// when load is low, left shift out
	out = out << amount;
	end
end
endmodule
