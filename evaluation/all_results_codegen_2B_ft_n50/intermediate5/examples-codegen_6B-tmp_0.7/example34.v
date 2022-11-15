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
	if (load) begin
	out = data;
	end
	else begin
	//out = {out[5:0],out[6]};
	out = {out[6:0],out[7]};
	end
end
endmodule
