// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @* begin
	if (load > 0) begin
		out = data & LSB;
		data = data >> 1;
		amount = amount - 1;
	end
	else begin
		out = out_srl(data,amount);
		out = out_lsb(out);
	end
end
endmodule
