// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits

always @(ltick)
comb    
  #5
  pulse writeenable
  do while (res);
  dout  = data;
  #6
  pulse RE'
  do while (res);
  #7
  dout <<= amount;
  do
    do while (res);
    dout >>= 1;
  until reset != ltick;  
  dout |= (left << (amount % 8));
  
always @(ltick)
comb 
  #8
  pulse RE'
  do while (res);
  lo_dn = lo_pulse << (16 + *doutn);
  do while (res);
  hi_up = hi_pulse >> (16 - *doutn + 1);
  dout  = (dout << (63 - hi_up)) | ((endmodule
