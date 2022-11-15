// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always @ *
	begin
	if(reset)	begin 
	out = data; 	// operation in progress when reset is high
	if(load)	begin 
	out = data;	// keeps shifting same value for reset cycles
	end 
	end 
	else	begin 
	out = data; 	// hold data when reset is low
	end 
	end 
endmodule
