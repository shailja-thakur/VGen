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
	out <= 8'b00000000;
	else if (load)
	out <= data;
	else begin
	// do the rotation
	// shift left by 2^(3-amount)
	out[amount-1:2]<=out[5:3];
	out[2:0]<=out[7:3];
	end
	end
endmodule
