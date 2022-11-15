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
	else
	begin
	if(load)
	out<=data;
	else
	begin
	if(amount==3'b110)
	out<=out<<1;
	else if(amount==3'b101)
	out<=out>>1;
	else if(amount==3'b100)
	out<=out>>1;
	end
	end
	end
endmodule
