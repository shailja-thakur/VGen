// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always
begin
  if (load == 1'b1)
  begin
    if (reset == 1'b1)
      out <= 0;
    else
      out <= (data << amount) | ((data & ([2:0]:1'b0)), 0);
  end
  else
  begin
    if (reset == 1'b1)
      out <= {data | 0};
    else
      out <= (data >> amount) | ((data << amount)?(out << (amount%8)):0);
  end
end

// shift left operation
module lshift(clk,reset,left,right,active,result,load,out);
input [1:0] left;
input [1:0] right;
input [1:0] active;
input [1:0] result;
input clk,reset;
input [7endmodule
