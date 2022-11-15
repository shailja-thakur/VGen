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
	if (reset) // prevents any dicey input
	begin
	if (load)
	out = data;
	else
	begin
	case(amount) // amount is the number of 1 in the binary representation of the number
	3'b000: out = out; // nothing is changed
	3'b001: out = {out[6:0],out[7]}; // shift right
	3'b010: out = {out[5:0],out[6]}; // shift left
	3'b011: out = {out[4:0],out[5]}; // shift right
	3'b100: out = {out[3:0],out[4]}; // shift left
	3'b101: out = {out[2:0],out[3]}; // shift right
end
end
end
endmodule
