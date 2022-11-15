// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always@(posedge clk or negedge reset)
if(!reset)
out<=0;
else if(load)
out<=data;
else begin
	// if amount is less than 0, then amount is amount to decrement
	if(amount<0) begin
	out<=out>>(-amount);
	end
	// if amount is 0 or greater than 0, then amount is amount to increment
	else begin
	out<=out<<amount;
	end
	end
endmodule
