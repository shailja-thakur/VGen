// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
assign load = out[7] = (out[7] & ~(amount-1)) | (((~out[7] & amount) << (load ? 0 : amount));
// rotate the data register (out[7] = (out[7] >> 1))
assign out[7] = out[7] >> 1 | (out[7] << (8 - amount));
// write the load and the out registers to output
endmodule
