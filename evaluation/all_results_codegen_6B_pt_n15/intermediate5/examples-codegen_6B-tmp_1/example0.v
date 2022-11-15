// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or negedge reset) begin
	out <= load & load | sample(data, 65535, 31);
end
// left shift operation
module left_shift(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [4:0] data;
input load;
output reg [4:0] out;
always @(posedge clk or negedge reset) begin
	out <= load & load | sample(data, 224, 31) | sample(data, 128, 31) | sample(data, 64, 31) |
			sample(data, 32, 31) | sample(data, 16, 31) | sample(data, 8, 31);
end

/* 5 . 16bit - data to left shift and right shift operation
 // multiplexed for D-endmodule
