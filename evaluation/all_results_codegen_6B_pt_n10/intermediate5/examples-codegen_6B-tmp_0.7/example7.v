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
  out <= load ? data : left_rotate(out[7:0],out[1:0],amount[2:0],out[7:0]);
end

module left_rotate_reg(clk,reset,data,load,out);
  always @(posedge clk)
    out <= left_rotate(data,load,out,31);
end

module left_rotate_reg_load(clk,reset,data,load,out);
  always @(posedge clk)
    out <= left_rotate(data,load,out,31);
end

module left_rotate_reg_load_shift(clk,reset,data,load,out);
  always @(posedge clk)
    out <= left_rotate(data,load,out,outendmodule
