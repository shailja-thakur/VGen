// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// rotate the register out followed by shift left by amount bits
always @(posedge clk or posedge reset)
	begin
	// if the load signal is 1, CE the output
	// shift is defined by (1,amount)
	if (load)
	begin	
	out = {out[6:0],data[7]};
	// shift left by 7-amount
	out = out << amount;
	end
	else
	out = out;
	end
endmodule
