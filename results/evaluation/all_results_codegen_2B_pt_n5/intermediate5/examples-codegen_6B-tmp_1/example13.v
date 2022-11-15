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
	if (load) begin
		out <= data;
	elsif (amount == 4) begin
		out <= data << <32,3>;
	elsif (amount == 3) begin
		out <<= <7,0>;
	elsif (amount == 2) begin
		out <<= <3,2>;
	elsif (amount == 1) begin
		out <<= <2>;
   end
end

// right rotate operation followed by baes shift right operation
// Used for encrypt/decrypt
// module right_rotate(clk,reset,data,load,amount,out);
input clk,reset;
input [7:0] data;
input load;
input [2:0] amount;
output reg [7:0] out;
#1 timesend
end
end
end
endmodule
