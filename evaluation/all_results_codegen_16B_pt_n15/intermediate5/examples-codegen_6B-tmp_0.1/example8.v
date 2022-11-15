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
	if(reset)
	out<=0;
	else if(load)
	out<=data;
	else begin
	// shift the data as the rotation is not accomplished by shifting
	// a 0, instead shift a random number which is less than the amount
	// to shift by, and which is the same as shifting by 0.
	// the rand is taken from a 64 bit number which is the input to the
	// shift operation.
	out<={out[6:0],(out[7]^out[6])^amount};
	end
	end
endmodule
