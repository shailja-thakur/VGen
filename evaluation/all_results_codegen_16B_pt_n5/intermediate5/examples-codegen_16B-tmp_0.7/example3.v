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
  if (load) begin
    out <= data;
  end
  else begin
    out = (out << amount) | (data & ((1 << amount) - 1));
    if (reset) begin
      out = 0;
    end
  end
end
// return result
function [7:0] return_result();
begin
  return return_result;
end
// return result function
function bit [7:0] return_data();
begin
  return_data = out;
end
endmodule
