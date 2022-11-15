// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always @(posedge clk)
begin
	if(reset)
	begin
	// reset the output to zero
	out = 8'b00000000;
	end
	else if(load)
	begin
	// load the input data to out
	out = data;
	end
	else
	begin
	// rotate the output
	out = {out[6:0],out[7]};
	if(amount == 3'b000)
	begin
	// When there is no rotation
	out = {out[0],out[1],out[2],out[3],out[4],out[5],out[6],out[7]};
	end
	else if(amount == 3'b001)
	begin
	// rotation by 1
	out = {out[7],out[0],out[1],out[2],end
end
end
endmodule
