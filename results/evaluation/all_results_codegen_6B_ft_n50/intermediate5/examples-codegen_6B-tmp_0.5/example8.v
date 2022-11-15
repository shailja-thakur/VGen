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
	if (reset == 1'b1)
	out = 8'b00000000;
	else if (load)
	out = data;
	else begin
	if(amount == 3'b110)//rotate right
	out = {out[6:0],out[7]};
	else if (amount == 3'b101)//rotate left
	out = {out[0],out[7:1]};
	else if (amount == 3'b100)//shift left
	out = {out[1:0],out[7:2]};
	else if (amount == 3'b011)//shift right
	out = {out[2:0],out[7:3]};
	else if (amount == 3'b010)//shift right
	out =end
end
endmodule
