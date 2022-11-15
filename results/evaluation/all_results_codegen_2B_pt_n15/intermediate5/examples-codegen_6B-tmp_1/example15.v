// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk)
  if(load) out = data;
  else if(((1'b0)|(amount[0]&1'b0))||((amount[1]&1'b0)))
   	out = (out << amount[0]) | (datau << amount[1]);
clock  i0(clk,reset,clk);
reseti i0(reset,reset);

endmodule
