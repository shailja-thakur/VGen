// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or negedge reset)
  if (load)
    out = data;
  else
    out <<= amount[0];
  if (amount[1]) out <<= 8;
  if (amount[2]) out <<= 16;
  if (amount[3]) out <<= 24;
  if (amount[4]) out <<= 32;
  if (amount[5]) out <<= 40;
  if (amount[6]) out <<= 48;
  if (amount[7]) out <<= 56;
end

// right shift and rotate operation
module right_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// whenendmodule
