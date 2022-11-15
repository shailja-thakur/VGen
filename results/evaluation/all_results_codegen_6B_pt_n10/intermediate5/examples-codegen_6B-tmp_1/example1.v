// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or negedge reset)
  if(load)
    out = data;
  else
    out = (out << amount) | (out >> (bitwidth-amount));
*/
void
SDS124_Avr::execute(Time & t)
{
  wait2cyc(clk, amount[0], bitwidth);
  wait2cyc(reset, amount[1], bitwidth);
  wait2cyc(load, bitwidth);
  out = (out << amount[0]) | (out >> (bitwidth-amount[0]));
}
endmodule
