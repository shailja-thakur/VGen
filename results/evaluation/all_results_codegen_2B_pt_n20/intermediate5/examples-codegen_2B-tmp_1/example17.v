// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
reg [13:0] tmp_data;
reg tmp_out;
assign tmp_data = data>>amount & 0x7F80;
//assign tmp_out = data>>amount & 0x7F80;
//assign tmp_out = data>>1 & 0x7F80;
assign tmp_out = tmp_data<<(out.bits-amount);
assign load = (clk == reset) ? 0 : 0;
assign out = tmp_out;
endmodule
