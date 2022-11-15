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
  out <= left_rotate_load(load,data,amount);

always @(posedge clk)
  if (load)
    out <= left_rotate_out(out,amount,data);

// left shift and rotate operation
always @(posedge clk)
  out <= left_rotate_store(data,load,amount);
signal out_latch;

always @(posedge clk)
  out_latch <= out;

endmodule
