// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
assign out = (load && (data[0]>>amount)) | (data[1]<<(32-amount));
// operation:
// if load is high:
//   out = data[0] >> amount
//   out = data[0] << (32-amount)
// if load is low:
//   out = data[1] >> amount
//   out = data[1] << (32-amount)
// operation:
//   out = data[0] >> amount
//   out = data[1] << (32-amount)
// operation:
//   if data[0] is the MSb and amount is the LSB,
//   out = 0
//   else
//   out = data[0] >> (amount)
//   out = data[0] << (32-amount)
//   out = data[1] >> (amountendmodule
