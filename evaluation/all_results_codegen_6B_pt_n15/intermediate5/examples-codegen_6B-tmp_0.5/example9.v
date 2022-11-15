// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
reg [7:0] out_reg;
always @(posedge clk or negedge reset)
  if (load)
    out_reg = data;
  else
    out_reg = out_reg << amount | out_reg >> (32 - amount);
end

// right shift and rotate operation
module right_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by right shift the out register by amount bits
reg [7:0] out_reg;
always @(posedge clk or negedge reset)
  if (load)
    out_reg = data;
  endmodule
