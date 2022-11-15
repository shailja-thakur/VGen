// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @* if load = '1'
begin
	if (reset = '0')
	begin
		out = data;
	end
	else
	begin
		if (amount > 0)
		begin
			out = data << amount;
		end
		else
		begin
			out = out << -amount;
		end
	end
end
// right shift operation
module right_shift(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by right shift the out register by amount bits
always @* if load = '1'
begin
	if (reset = '0')
	begin
		end
end
endmodule
