// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @ (posedge clk, posedge reset)
begin
	if(reset)
	begin
	out<=0;
	end
	else if(load)
	begin
	out<=data;
	end
	else
	begin
	out<=left_shift(out,amount);
	end
	end

module left_shift(clk,reset,in,out);
input [7:0] in;
input clk;
input reset;
output reg [7:0] out;
// when reset is high, out is cleared
always @ (posedge clk, posedge reset)
	begin
	if(reset)
	begin
	out<=0;
	end
	else
	begin
	out<=in;
	end
	end
endmodule
