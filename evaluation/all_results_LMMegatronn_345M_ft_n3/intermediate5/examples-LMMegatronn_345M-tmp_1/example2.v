// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// rotate the register out followed by shift left by amount bits
reg [7:0] shift_left;
reg [7:0] shift_right;
/*
                                    // place the routco display
                                     // NAV digit, inverted from the temp register
                                     // in case of data_right?
                                     // the third two bits are treatedendmodule
