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
 if(reset)
	out = 8'h0;
 else 
	begin
	if(load)
	out = data;
	else
	begin
	if(amount == 3'b110)
	out = {1'b0,out[6:0]};
	else
	if(amount == 3'b101 || amount == 3'b101)
	out = {out[5:0],1'b0};
	else
	if (amount == 3'b100)
	out = {out[4:0],1'b0,1'b0};
	else
	if(amount == 3'b011 || amount == 3'b101)
	out = {out[3:0],4'b0000,out[7:4]};
	else
	ifend
end
endmodule
