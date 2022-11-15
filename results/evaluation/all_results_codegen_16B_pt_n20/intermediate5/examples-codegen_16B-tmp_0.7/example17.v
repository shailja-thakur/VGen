// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or posedge reset) begin
  if(load) begin
    out <= data;
  end
  else begin
    out <= (out << amount) | (out >> ((size - amount) + 1));
  end
end
// left shift and rotate operation
module left_shift(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise left shift the data register by amount bits
always @(posedge clk or posedge reset) begin
  if(load) begin
    out <= data;
  end
  else begin
    out <= data << amount;
  end
end
// right rotate and right shiftendmodule
