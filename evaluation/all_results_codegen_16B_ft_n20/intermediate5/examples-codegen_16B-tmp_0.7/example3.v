// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always @(posedge clk) begin
	if (reset) begin
	out = 0;
	end
	else begin
	if (load) begin
	out = data;
	end
	else begin
	out = out << amount;
	out[7] = out[6];
	out[6] = out[5];
	out[5] = out[4];
	out[4] = out[3];
	out[3] = out[2];
	out[2] = out[1];
	out[1] = out[0];
	out[0] = 0;
	end
	end
end
endmodule
