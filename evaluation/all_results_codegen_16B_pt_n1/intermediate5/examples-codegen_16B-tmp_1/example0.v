// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or negedge reset) begin // PRE: OUT 
	if (reset || load) begin 
		out <= data; 
	end 
	else begin 
		out <= data << (amount) and ~(1<<amount-1); 
 	end
end
// rotation to right - you need a left shift here 
// module right_rotate(clk, reset, amount, data, load, out);
// input clk,reset;
// input [8:0] amount;
// input data;
// input load;
// output reg out;
//always @(posedge clk or negedge reset) begin // PRE: OUT 
//	if (reset || load) begin 
//		out <= data;
//	end 
//	else begin 
//		out <= data >> (amount);
//endmodule
