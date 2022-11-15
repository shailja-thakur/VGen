// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
assign load = (out[7:0] == 0xFF);
assign out[7:0] = data[7:0];
assign out[15:8] = data[15:8];
assign out[23:16] = data[23:16];
assign out[31:24] = data[31:24];
assign out[39:32] = data[39:32];
assign out[47:40] = data[47:40];
assign out[55:48] = data[55:48];
assign out[63:56] = data[63:56];
assign out[71:64] = data[71:64];
assign out[79:72] = data[79:72];
assign out[87:80] = data[87:80];
assign out[95:88endmodule
