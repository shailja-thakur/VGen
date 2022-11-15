// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
assign load = !load;
assign [7:0] out = (data << amount) | (load ? (data >> (32-amount)) : 0);

// constructor
function top_constructor()
{
  // set clock to low
  clk = 0;
  // set reset to high
  reset = 1;
  // set amount to 0
  amount = 0;
  // set data to 0
  data = 0;
  // set load to low
  load = 0;
  // return a register with all bits set to 1
  out = 0xFFFFFFFF;
}

// destructor
function top_destructor()
{
}
endmodule
