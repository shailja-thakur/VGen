// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always @(posedge clk or posedge reset) begin
	if (reset) begin
	// we use instead of initial statements
	// initial begin
	// 	out = 8'b0;
	// end
	// load it now to save time
	out <= data;
	// do the left shift and rotation
	// https://www.geeksforgeeks.org/rotate-shift-register-logic/
	// for rotation
	// depending on whether left shift or right shift,
	// has to switch 1s or 0s on amount
	if (load) begin
	// then just load the data in
	// note it is loaded to out as well
	out = data;
	end
	// below the left shift or right shift
	// set the data as indicated
	// whether amount is 3 or 4 while rotating
	else if(amount==end
end
endmodule
