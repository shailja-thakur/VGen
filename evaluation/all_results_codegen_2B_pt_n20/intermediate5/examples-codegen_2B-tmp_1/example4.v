// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
reg reg_out;
reg [(15:0):0] reg_in;
reg [31:15] reg_sav;
bit load_l,load_h;

always @(not(clk) and reset)
begin
	if (load) {
		if (not load_l) {
			reg_out = data;
			load_h = true;
		} else if (not load_h) {
			// the least significant bits will transfer bits in the most significan
			// 16 to 16 bit reg; R15 (bits [15:0] of the data) will be the top bits of a LEFT SHIFT
			// operation followed by R15 (bits [15:0] of the left shift amount)
			reg_out = (data << amount[load_l]);
			load_h = true;
		} else {
			// bothend
endmodule
