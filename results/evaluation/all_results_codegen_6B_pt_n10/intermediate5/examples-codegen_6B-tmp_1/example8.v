// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
reg [7:0] out = 0;
always @ (posedge clk or negedge reset) begin
	if (load) out = data;
	else if (frac_part(amount))
		out = 16384 * bit(out, 7) + bit(out, 1);
	else {
		out = out << bit(amount) | bit(out, amount+1);
		out = load ? (16384 * bit(out, 7) + out) : out;
	}
end
endmodule
