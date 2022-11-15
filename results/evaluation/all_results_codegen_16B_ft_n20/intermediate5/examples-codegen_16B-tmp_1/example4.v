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
	if (reset == 1'b0) begin
	// make reset active high to rotate the output...
	// seems odd, but it's what the lab wants
	end
	else if (load == 1'b1) begin
	// disable the element in the shift register at the end
	// when load is high the output becomes the new input with itself as the
	// output on the next cycle
	// this is the correct carry through value for shifting
	end
	else if (clk == 1'b1)begin
	// rotate the value
	/*reg [8-amount:0] temp;
	temp[amount*9-1:0] = out[0][7:4]
	0000000000000000000000001101
	temp[8-amount:0] = out[0][3:0]
	0011111101end
end
endmodule
