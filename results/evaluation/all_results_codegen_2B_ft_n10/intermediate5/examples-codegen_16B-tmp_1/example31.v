// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always@(posedge clk or posedge reset)
	begin
	
	if(load === 1) begin
	out = data;
	end
	else
	begin
	// shift and rotate
	// assertion of this syntax requires a signed type
	// according to r contravariance quantor theory
	// truly universal Left Shift
	out = out << ( amount - 1'b1);
	// logical left rotation uses =
	// right rotation uses *
	end
	end
endmodule
