// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or negedge reset)
	out <= left_rotate(load,data[7:0],out >> amount[0],data[7:0] >> amount[1],data[7:0] >> amount[2],data[7:0] >> amount[3],data[7:0] >> amount[4],data[7:0] >> amount[5],data[7:0] >> amount[6]);	
end

// ----------------------------------------------------------
// Rotate in register right shift operation

module right_shift(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output       int     out_odd;
output       int     out_even;
output       bool    out_carry;

// whenendmodule
