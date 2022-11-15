// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
assign load = (load) ? (true) : (false);
assign out = data;
assign out[amount] = data[amount];
assign out[7:0] = data[(amount + 1)];
endmodule
