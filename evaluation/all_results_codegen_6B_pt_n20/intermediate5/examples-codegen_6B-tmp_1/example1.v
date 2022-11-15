// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
reg_repeat(`,cnt`);
VBIF `cnt` = -2'd`cnt`;
assign z = out[2];
always @(posedge clk or negedge reset) begin
	if (`cnt` > 0) begin
		if (load) begin
			out = data;
		end
		else begin
			out >>= amount;
		end
	end else begin
		out = 0;
	end
end
endmodule
