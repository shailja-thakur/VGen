// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// shift left and rotate the register out by amount bits
always @(posedge clk)
begin
	if (reset) begin
	// reset
	out = 8'b0;
	end
	else if (load) begin
	// load data
	out = data;
	end
	else begin
	// shift left and rotate
	// rotation is arithmetically shift right
	// because of rotation, the rotation is always less than the size
	// so it doesn't matter if the rotation is less than the size
	// do the rotation by masking the bits to be shifted out
	out = out << amount;
	out = out >> amount;
	end
end
endmodule
