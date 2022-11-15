// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
assign load = (out[7] >> 7) & 1;
assign out = left_shift(out, amount) << 7;
assign out = out | (out[7] >> data);

// left shift and rotate operation
module right_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
assign load = (out[7] >> 7) & 1;
assign out = right_shift(out, amount) << 7;
assign out = out | (out[7] >> data);

// left shift and rotate operation
module left_endmodule
