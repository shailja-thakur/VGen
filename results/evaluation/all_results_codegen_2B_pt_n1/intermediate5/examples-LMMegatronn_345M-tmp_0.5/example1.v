// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// rotate the register out followed by shift left by amount bits
// so that we can shift right by 7
reg [7:0] shift_reg;

// This is the initial sign bit, so use the shifter to determine which subtract one bit
// to represent the value of the data which is shifted out.
initial begin
    // Initialize Inputs
    shift_reg = 0;
    shift_reg[0] = 0;
    shift_reg[1] = 0;
    shift_reg[2] = 0;
    shift_reg[3] = 0;
    shift_reg[4] = 0;
    shift_reg[5] = 0;
    shift_reg[6] = 0;
    shift_reg[7] = 0;
end

// This is the initial fraction of the shifter to determine whichendmodule
