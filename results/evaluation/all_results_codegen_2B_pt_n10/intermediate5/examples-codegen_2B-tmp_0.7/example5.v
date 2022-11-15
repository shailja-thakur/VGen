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
  if (load)
  {
    // write to out register every time
    out = data;
    // load data into out register every time
    data = load;
  }
  else
  {
    // rotate the out register
    out = (data << amount) | (data >> (32 - amount));
  }
endmodule
