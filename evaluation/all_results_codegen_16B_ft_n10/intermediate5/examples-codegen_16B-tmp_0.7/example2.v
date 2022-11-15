// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk, posedge reset)
begin
	if(reset)
	begin
	out<=0;
	end
	else
	begin
	if(load)
	out<=data;
	else begin
	out<={out[6:0], out[7] ^ amount[2] , out[7:1] ^ amount[1:0]};
	end
	end
end
endmodule
