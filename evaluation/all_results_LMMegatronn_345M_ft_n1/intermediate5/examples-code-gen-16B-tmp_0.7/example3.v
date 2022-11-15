// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// shift left and rotate the register out by amount bits
always @ (posedge clk, posedge reset)
if(reset) // when reset is high, output is zero
	out = 0;
else if(load)
	out = data;
else // do left shift by amount bits and rotate right by amount/2
	out = {out[6:0],out[7]};
	out = {out[2:0],out[7:3]};
endmodule
