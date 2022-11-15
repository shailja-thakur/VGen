// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
reg [7:0] out;
always @(posedge clk or negedge reset) // this is ok. nothing is in update cycle and so then(load) and negedge reset will happen in the
process(load)
{
  if (load)
    out = data;
  else
  {
    if(amount[1] == 0)
    {
      out = out << word(data[5:0]);
    }
    else
    {
      out = out << word(data[4:1]);
    }
    out = out << word(data[3:2]);
    out = out << word(data[2:3]);
    out = out << word(data[1:4]);
    out = out << word(data[0:5]);
  }
  out = out << word(0x80);
}
endmodule
