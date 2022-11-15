// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
assign out = (load == 1) ? (data << amount) | (data >> (32 - amount)) : (data << amount);

// right shift and rotate operation
module right_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by right shift the out register by amount bits
assign out = (load == 1) ? (data >> (32 - amount)) | (data << amount) : (data >> (32 - amount));

// left shift and rotate operation
module left_shift_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2endmodule
