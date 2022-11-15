// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// shift left and rotate the register out by amount bits
always @(posedge clk, posedge reset)
begin
	if(reset)
	begin
	out[7:0]<=0;
	// this is a shift/rotate left operation
	// assign each value as close as practical
	// this should place 0 in the most significant bit(MSB) of the register, to hold a 1 all bits should be zeros
	case(amount)
	// place the 1 based on the position
	3'd0: out[0] <= data[0];
	3'd1: out[1] <= data[1];
	3'd2: out[2] <= data[2];
	3'd3: out[3] <= data[3];
	3'd4: out[4] <= data[4];
	3'd5: out[5] <= data[5];
	3'd6:end
end
endmodule
