// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
// then set the out register high until reset goes high
always @(posedge clk)
dff(out,load=[load],clk[0]=clk,reset=reset,amount=amount)
{
compare(~out,load)
  dff(out,clk[0]=clk,reset=reset,amount=32-amount);
}
endmodule
