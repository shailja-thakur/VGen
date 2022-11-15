// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
reg [7:0] left;
assign out = data;
assign out[amount] = left[amount];
assign left[amount] = out[amount - 1];
assign left[amount - 1] = out[amount];
assign left[amount - 2] = out[amount - 2];
assign left[amount - 3] = out[amount - 3];
assign left[amount - 4] = out[amount - 4];
assign left[amount - 5] = out[amount - 5];
assign left[amount - 6] = out[amount - 6];
assign left[amount - 7] = out[amount - 7];
assign left[amount - 8] = out[amount - 8];
assign left[amount - 9] = out[amount - 9];
assign left[amount - 10] = out[amount - 10];
endmodule
