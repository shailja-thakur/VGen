// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits

reset_delay delay(reset,clk,out);
always @(posedge clk)
begin
 	out = data;
	if (load == 1'b1)
	begin
	out = data;
	end
	else
	begin
	if (amount == 3'b 000)
	begin
	out = {3'b 00,out[7:1]};
	end
	if (amount == 3'b 001)
	begin
	out = {out[6:1],1'b 0};
	end
	if (amount == 3'b 010)
	begin
	out = {out[5:1],2'b 00};
	end
	if (amount == 3'b 011)
	begin
	out = {out[4:1],3'b 00};
	end
	if (end
end
endmodule
