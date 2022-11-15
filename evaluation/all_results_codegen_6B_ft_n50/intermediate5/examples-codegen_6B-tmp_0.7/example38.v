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
	if(reset)
	out<=0;
	else if(load)
	out<=data;
	else if(amount==3'b110)
	out<=out;
	else if(amount==3'b101)
	out<={out[6:0],out[7]};
	else if(amount==3'b100)
	out<={out[5:0],out[6],out[7]};
	else if(amount==3'b011)
	out<={out[4:0],out[5],out[6],out[7]};
	else if(amount==3'b010)
	out<={out[3:0],out[4],out[5],out[6],out[7]};
	elseend
endmodule
