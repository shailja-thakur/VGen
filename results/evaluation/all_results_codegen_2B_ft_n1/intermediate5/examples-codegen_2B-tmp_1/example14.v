// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
or select bdelay_in_load(reset,clk) where clk='1';
{ left_shift_5(out); select rdelay_wrap(reset,amount[01111]); }
main begin
#5/12 rat_delay=input reg [2:0]; sampl true;
delay [0:0] rat_delay_;
test_assert rat_delay_naively <7;


// load value at position x, y
input [5:0] x;
input [5:0] y;
input sampl_bool;

 input [7:0] inn [4:0];
input clk,reset;
output reg [7:0] out;

// square size
assign X [0:1] = [x,(x+1) & 0xff];
assign Y [0:1] = [y,(y+end
endmodule
