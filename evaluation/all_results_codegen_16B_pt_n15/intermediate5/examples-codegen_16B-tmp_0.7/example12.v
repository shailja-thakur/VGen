// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or negedge reset)  begin
	if (reset == 0) begin
		case(amount)
			3'b000 : begin
				if (load) begin
					out = data;
				end
			end
			4'b001 : begin
				if (load) begin
					out = data;
				end
			end
			4'b010 : begin
				if (load) begin
					out = data;
				end
			end
			4'b100 : begin
				if (load) begin
					out = data;
				end
			end
		end
	end
end
// right shift and rotate operation with zero fill
module right_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] dataendmodule
