// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk) begin
if(reset||amount==0)
out<=0;
else if(load)
out<=data;
else begin
	//	one of the leftmost 1 bit in the out will be the new 0th bit after rotation
	out[7]<=out[0];
	out[6:0]<={out[7:1],1'b0};
end
end
endmodule
