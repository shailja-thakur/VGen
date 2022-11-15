// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
assign load_clk = clk;
assign out = data;
assign load_reset = reset;
assign load_amount = amount;
assign load_data = data;
assign load_out = out;
assign load_load = load;
assign load_out_clk = clk;
assign load_out_reset = reset;
assign load_out_amount = amount;
assign load_out_data = data;
assign load_out_load = load;
assign load_out_out = out;
constrain load_out_out <= out;
constrain load_out_out >= 0;
constrain load_out_out <= out;
constrain load_out_out >= 0;
constrain load_out_out <= out;
constrain load_out_out >=endmodule
