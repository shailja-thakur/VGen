// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits

always @(posedge clk)
begin
if (reset)
	out <= 8'b0;
else if (load)
	out <= data;
else begin
	// shift left the out if amount is greater than 0
	if (amount > 0) begin
	out = out << (amount);
	end
	// rotate right the out if amount is less than 0
	if (amount < 0) begin
	out = out >> (-amount);
	end
end
end
endmodule
