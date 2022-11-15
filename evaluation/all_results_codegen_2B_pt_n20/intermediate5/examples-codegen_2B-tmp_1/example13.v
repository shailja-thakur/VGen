// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
// the core clock is divided by 4 and for certain
// DIG1, DIG2 and DIG3 and for NCP1505 B
// X, Y DIG3 and Y DIG2 and NCP1505 PA2

assign CLK = clock;
assign RST = reset;
assign type_out = out;

// $$$$ here with hardware to specify the SRAM

assign out = data


// !! the code below is supposed to emulate an internal concatenation of 2 memory registers and write them both at the same time
// => must achieve an outcome that is not dependant on DAPLL1 or DAPLL2
// ALSO: provide only a definition of 4 storage registers

// !! RA8875 command sequence
// !! Constants must be defined like:

// !! __SIZEOF__RA8875_MODE_REG = //!!! defineendmodule
