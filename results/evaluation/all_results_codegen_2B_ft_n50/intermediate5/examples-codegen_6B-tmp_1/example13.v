// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
reg [7:0] out;
reg lvl;
always @(posedge clk) {lvl <= do_shift(data, amount, lft_tmp);}
always @(posedge load) {
	if(lvl) out <= out.load | do_rot_load(data, rght_tmp, out);
	else out <= out.load | out.rot << amount;
}
endmodule
