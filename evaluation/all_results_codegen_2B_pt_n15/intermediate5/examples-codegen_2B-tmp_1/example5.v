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

// output data from out when load was low
reg out_l;

// reset the out register on reset
reg reset;

// when reset is high, reset out register
// otherwise shift out register in the direction specfied by amount bits
reg out_dir;

// left shift operation on out register
reg [1:0] out_dir;

// the necessary shift amount before rotate operation
reg [1:0] left_shift;

// the necessary shift amount after rotate operation
reg [1:0] right_shift;

assign out = out_l;
if (load == reset) {
  // when load is high, keep out in rot direction
  out_l = data;
  out_dir = data;
  left_shift = data;
  right_shift = data;
} else {
endmodule
