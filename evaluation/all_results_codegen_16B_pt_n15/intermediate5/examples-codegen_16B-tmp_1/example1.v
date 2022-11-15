// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @* { if (load) { if (amount[0] == 0) data[1:0] = data[1:0] + amount[0]; else amount[1:0] = amount[1:0] + 1; } }endmodule
