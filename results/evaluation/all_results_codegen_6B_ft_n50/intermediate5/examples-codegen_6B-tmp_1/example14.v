// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
// make the left part of the out to be the data on the input of flipflop
always @(posedge clk or negedge reset) begin
if (!reset)//load
	out <= data;
else if (load)
	out <= data;
	else begin	//increment the right side of the out
	out[amount] <= out[amount-1];
	out[amount-1] = 0;
	end
end
endmodule
