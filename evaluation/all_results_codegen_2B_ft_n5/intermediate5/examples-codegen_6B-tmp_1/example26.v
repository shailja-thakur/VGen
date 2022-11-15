// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or negedge reset)
	begin
	//if (amount is changed of load is high, then amount is consecutive nonzero
	if (load || amount != 3'b000)
	begin
	if (amount == 3'b001)	//if amount = 1, that means no rotation is needed
	
	out = data;
	else if (amount == 3'b010)	//if amount = 2, then out will be moved one location to right by 1
	
	out = {out[6:0],out[7]};
	else if (amount == 3'b011)	//if amount = 3, then out will be moved two locations to right by 1, in the same clock cycle
	
	out = {out[5:0],out[6],out[7]};
	else if (amount == 3'b100end
end
endmodule
