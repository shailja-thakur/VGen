// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk)
	if(reset)
	begin
	if(load)
	begin
	out=data;
	end
	else
	begin
	out={out[6:0],out[7]};
	if(amount==3'b110)
	out={out[5:0],out[7:6]};
	if(amount==3'b111)
	out={out[4:0],out[7:5]};
	if(amount==3'b100)
	out={out[3:0],out[7:4]};
	if(amount==3'b101)
	out={out[2:0],out[7:3]};
	if(amount==3'b110)
	out={out[1:0],out[7:2]};
	if(end
end
endmodule
