// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
(* @clk = !reset && !load ? @out[data & 0x7F] : 
  @out[(@out >> amount) | (@out << (31-amount))] & 0xFFFFFF80) | 
  (!load ? (@out >> (amount+1)) : @data);)
  
// left shift and rotate operation
module lshr_rrotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
(* @clk = !reset && !load ? @out[data & 0x7F] : 
  @out[(@out >> amount)endmodule
