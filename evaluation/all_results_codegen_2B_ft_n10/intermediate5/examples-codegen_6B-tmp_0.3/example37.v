// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or posedge reset)
	begin
	if(reset)
	out <= 8'b00000000;
	else if(load)
	out <= data;
	else begin
	case(amount)
	3'b000: out = out; // no change
	3'b001: out = out << 1; // shift left
	3'b010: out = out >> 1; // shift right
	3'b011: out = out << 1; // shift left
	3'b100: out = out >> 1; // shift right
	3'b101: out = out << 1; // shift left
	3'b110: out = out >> 2; // shift right
	3'b111: out = out << 2; // shift left
	endcase
	end
	end
endmodule
