// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
// clock is active low
always @(posedge clk or negedge load)
  if (load) {
    out = data;
  } else {
    out = reg_shift_left(out, amount, out);
  }
end

// left shift and rotate operation
module shift_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
// clock is active low
always @(posedge clk or negedge load)
  if (load) {
    out = data;
  } else {
    out = reg_shift_leftendmodule
