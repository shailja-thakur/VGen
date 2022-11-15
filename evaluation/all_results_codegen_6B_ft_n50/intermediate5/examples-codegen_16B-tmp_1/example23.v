// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk,reset)
	if (reset)
	begin
	if (load)
	begin
	 out <= data;
	end
	else
	begin
	#5 out= ( 	 (out << amount) | (out >> (6-amount)));
	// bits shifted out = 000000xx if 3 <= A < 6
	// or bits shifted out = 0000x001 if A == 6
	end
	end
endmodule
