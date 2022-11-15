// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// rotate the register out followed by shift left by amount bits
always @(posedge clk or posedge reset)
begin
if (reset)
	out <= 8'b00000000;
else if (load)
	out <= data;
else begin
	// shift out the data to left by amount
	out <= {out[6:0],out[7]};
	// rotate the data to the right by amount
	out <= {out[2:0],out[7:3]};
end
end
endmodule
