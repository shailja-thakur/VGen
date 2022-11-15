// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
reg [7:0] out_reg = "000000";
always @(posedge clk or negedge reset)
  out_reg = left_rotate(out_reg[6:0], load, out_reg[6:0] & amount[0] != 0, data[6:1] & load, out_reg[6:0] >>> amount[0]);
endmodule
