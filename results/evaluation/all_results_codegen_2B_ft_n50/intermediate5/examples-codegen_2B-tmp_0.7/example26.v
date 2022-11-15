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
begin
	if (reset)
	begin
	out <= 8'b00000000;
	end
	else if (load)
	begin
	out <= data;
	end
	else
	begin
	for (int i = 0; i < 8; i = i + 1)
	begin
	out[i] <= data[8-i-1];
	end
	end
end
endmodule
