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
  if (load) out <= data; else out <<= amount;

// outputs

// when load is low, load data from data to out
// otherwise shift out left by amount bits, and right shift out right by amount bits
always @(posedge clk or negedge reset)
  if (not load) out <<= amount; else out >>= amount;
endmodule
