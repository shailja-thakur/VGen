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
  out <= ^((int<bitwidth('out[3]'):0>carry in)&load) & (leon_signal(31-amount)&load) &
(~out & 0) & leon_signal(data);

// Update Temp conversion clock
if (posedge clk)
  temp_conv_clock_update();

// left shift bitmasks 7 bits and translate to binary using table 31-29
#69 0 1 2 3 4 5 6 7 8 7 9 7 6 5 4 3 2 1 0
#30 17 20 21 22 23 24 25 26 27 27 26 ^ 27 25 24 23 22 21
#18 4 11 12 15 17 19 22 26 27 27 27 27 ^ 27 18 27 27 26 25
#0 2 4 6  8 10 12 14 16 18 21 22 24 26 28 30 31 32 33 34endmodule
