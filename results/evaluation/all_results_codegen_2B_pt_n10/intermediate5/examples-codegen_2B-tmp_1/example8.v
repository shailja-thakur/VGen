// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
reg [7:0] tmp;
assign out = data;
wb_barrier;
assign tmp = load;
wb_barrier;
assign out = left_shift(out, amount, out);
andout;
wb_barrier;
assign tmp = left_shift(out, amount, tmp);
wb_barrier;
assign load = left_shift(out, amount, tmp);
assign wr_barrier;
// when load is high, write out since load is followed by rotate
assign out = data;
reg [7:0] out1;
assign out1 = left_shift(out, amount, clk);
cmpout;
wb_barrier;
assign out = concat(out, out1);
wb_barrier;
// wr_barrier necessary to prevent AMU1 stalls after end of the operation
endmodule
