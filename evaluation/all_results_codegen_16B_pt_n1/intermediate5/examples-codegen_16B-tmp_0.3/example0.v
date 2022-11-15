// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or posedge reset) begin
	if (load) begin
		out <= data;
	end else begin
		out <<= amount;
		out[0] <= data[0];
		out[1] <= data[1];
		out[2] <= data[2];
		out[3] <= data[3];
		out[4] <= data[4];
		out[5] <= data[5];
		out[6] <= data[6];
		out[7] <= data[7];
	end
end
endmodule
