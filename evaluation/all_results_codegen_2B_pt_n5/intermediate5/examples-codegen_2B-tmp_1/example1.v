// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
assign load=times_and_shift(CONTENT,2'h0,1{l}).out;
always @(posedge clk, posedge reset)
begin
if (reset == reset)
  left_rotate.out = 0;
else if (load == 0 || (load == 1 && out == 0))
  left_rotate.out = amount;
else
  left_rotate.out = rotate_left(out,amount);
end
endmodule
