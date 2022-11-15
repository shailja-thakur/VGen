// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always(clk or reset)
begin
  if(load)
  begin
    if(data[0]) out = data;
    else out = out << amount;
    if(data[1]) out = out | data[1];
    else out = out << 8;
    if(data[2]) out = out | data[2];
    else out = out << 8;
    if(data[3]) out = out | data[3];
    else out = out << 8;
    if(data[4]) out = out | data[4];
    else out = out << 8;
    if(data[5]) out = out | data[5];
    else out = out << 8;
    if(data[6]) out = out | data[6];
    else out = out << 8;
  end
  out = out << amount;end
endmodule
