// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk, posedge reset) begin
	if(reset) out <= 8'b0;
	else begin
	if(load) out <= data;
	else out <= ROTATE(out, amount); 
	end
end
// taken from www.hmc.edu/ece/~dtowne/assgns/ece590/lshift.html
function [7:0] ROTATE;
input reg [7:0] in;
begin: a
if (in == 0)
	ROTATE = in;
else if (in[0] !=0)
	ROTATE = {1'b0,in[7:1]};
else if (in[0] == 0 && in[1] != 0)
	ROTATE = {in[2:1],in[7:2]};
elseend
endmodule
