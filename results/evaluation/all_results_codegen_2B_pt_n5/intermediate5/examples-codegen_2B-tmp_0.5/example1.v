// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk,posedge reset)
begin
  if (reset) begin
    out = 0;
  end
  if (load) begin
    out = data;
  end
  if (out[amount]) begin
    out = out << amount;
    out = out >> (32 - amount);
  end
end
end
end
""",
    # right shift and rotate operation
    "right_rotate": "module right_rotate(clk,reset,amount,data,load,out);\n"
    "input clk,reset;\n"
    "input [2:0] amount;\n"
    "input [7:0] data;\n"
    "input load;\n"
    "output reg [7:0] out;\n"
    "// when load is high, load dataendmodule
