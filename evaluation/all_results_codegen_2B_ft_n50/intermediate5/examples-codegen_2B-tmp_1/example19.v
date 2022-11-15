// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
// the logic for shift and rotate follows
always @(posedge clk) 
begin
	if (reset)
	begin
	out <= 8'b00000000;
	end
	else
	begin
	out <= data;
	end
end
always @(posedge clk)
begin
	if (reset) begin
	out <= data;
	end
	else if (load)
	begin
	out <= data;
	end
	else if (amount!=0)
	begin
	out = out<<amount;
	end
	end
// end the always block when reset is low
endmodule
