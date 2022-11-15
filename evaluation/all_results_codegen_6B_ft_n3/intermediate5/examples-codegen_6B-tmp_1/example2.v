// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// rotate the register out followed by shift left by amount bits
always @(posedge clk)
if (reset) begin //high at edge of clock
	if (load) begin //if you want to load data
	out = data; //output the loaded data
	end
	else if (amount==3'b110) begin
	out = {out[6:0],out[7]}; //shift to the right by 1
	end
	else if (amount==3'b101) begin 
	out = {"out[5:0]",out[6],out[7]}; // shift to the left by 1
	end
	else if (amount==3'b100) begin
	out = {"out[4:0]",out[5],out[6],out[7]}; // shift to the left by 2
	end
	else if (amount==3'b011) begin
	out = {"out[endmodule
