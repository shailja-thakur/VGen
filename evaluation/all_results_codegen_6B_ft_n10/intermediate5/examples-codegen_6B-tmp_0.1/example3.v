// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or posedge reset)
	begin
	if (reset)
	out <= 0;
	else if (load)
	out <= data;
	else begin
	// do the rotate
	// out2 is the rotated output
	// temp is the input to be rotated
	// rotate is the number of times to rotate the input
	out2 = {out[6:0],out[7]};
	temp = {out[0],out[1],out[2],out[3],out[4],out[5],out[6],out[7]};
	rotate = 6'b000000;
	for (i=0;i<amount;i=i+1)
	begin
	// shift left
	// out3 is the shifted output
	// temp2 is the input to be shifted
	out3 = {tempend
end
end
endmodule
