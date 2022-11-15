// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
assign load = (data == 0b1) ? data : out;
assign out = ((out << amount) | (load >> (32-amount))) & 0b11111111111111111111111111111111;


// right shift and rotate operation
module right_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
assign load = (data == 0b1) ? data : out;
assign out = ((load << (32-amount)) | (out >> amount)) & 0b11111111111111111111111111111111;


// left shift and rotate operation
moduleendmodule
