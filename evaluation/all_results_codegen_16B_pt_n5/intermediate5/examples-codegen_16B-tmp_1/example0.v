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
	if(load) begin
		out := data;
	end else begin
		out := left_rotate(out,amount);
	end
end
endlink

// left rotate with carry operation
module left_rotate_c(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [15:0] out;
// when load is high, load data to out
// otherwise rotate the out register with carry followed by left shift the out register by amount bits
always @* begin
	if(load) begin
		out := data;
	end else begin
		out <<= (amount+1); // +carry
		out := left_rotate(out,amount);
		out[15] = carry;end
endmodule
