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
  if (reset) {
      out = data;
      load = 1;
  } else if (load) {
      out = data;
      load = 0;
  } else {
      out = data << amount;
      load = 1;
  }
};

init
{
  load = 0;         // set data to 0 initially
  amount = 0;
  data = 0;
};

endmodule
