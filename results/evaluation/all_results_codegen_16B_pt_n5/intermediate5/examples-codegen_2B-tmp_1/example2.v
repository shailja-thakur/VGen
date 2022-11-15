// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// rotate the register out followed by shift left by amount bits
always@(posedge clk)
if (reset) begin
	out <= 8'b0;
end
else if (load) begin
	out <= data;
end
else if (amount) begin
	//out[0] <= data[0];
	out <= {data[7:1]};
	//shift left by one bit and set the MSB to 0
	$display("%b %b %b",data,load,out);
end
endmodule
