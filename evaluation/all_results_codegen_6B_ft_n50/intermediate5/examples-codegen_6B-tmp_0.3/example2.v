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
else begin
	if(amount==3'd0)
	begin
	out<=out;
	end
	else if(amount==3'd1)
	begin
	out<=out>>1;
	end
	else if(amount==3'd2)
	begin
	out<=out>>2;
	end
	else if(amount==3'd3)
	begin
	out<=out>>3;
	end
	else if(amount==3'd4)
	begin
	out<=out>>4;
	end
	else if(amount==3'd5)
	begin
	out<=out>>5;
	end
	else if(end
end
endmodule
