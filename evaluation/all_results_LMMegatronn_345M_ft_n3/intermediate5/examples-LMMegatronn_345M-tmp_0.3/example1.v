// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// rotate the register out followed by shift left by amount bits
reg [7:0] shift_reg;
// which is the "shift left" or "shift left"
// which is the "shift left" or "shift left"
reg [7:0] shift_reg_2;
// which is the "shift left" or "shift left"
// which is the "shift left" or "shift left"
reg [7:0] shift_reg_3;
// which is the "shift left" or "shift left"
// which is the "shift left" or "shift left"
reg [7:0] shift_reg_4;
// which is the "shift left" or "shift left"
// which is the "shift left" or "shift left"
reg [7:0] shift_reg_5;
// which is the "shift left" or "shift left"
// which is the "shift left" or "shiftendmodule
