// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or posedge reset) begin begin
	if(reset == 1 && load == 0) begin
		out[7:0] <= data;
		out <<= amount;
	end
	else begin
		out <<= amount;
		out[7:0] <= out[amount+1:0];
	end
end
endmodule
