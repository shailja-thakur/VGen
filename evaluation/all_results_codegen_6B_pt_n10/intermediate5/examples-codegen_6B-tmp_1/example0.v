// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
reg [7:0] prev,next,out1;
always @(posedge clk) 
{ next=not load and prev | load;
  out1=left_shift(next,amount[1:0]);
  out=out1 | out1 >>(8-amount[0]);
}
endmodule
