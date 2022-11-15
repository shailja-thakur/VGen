// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// rotate the register out followed by shift left by amount bits
always@(posedge clk)
	if(reset)
		out = 8'b00000000;
	else if (load)
		out = data >> 1; 
	else if (load && !load_hold)
		out = {1'b0,data} << (7 - 1);
	else if (!load)
		out = {1'b0,data} >> 1;
endmodule
