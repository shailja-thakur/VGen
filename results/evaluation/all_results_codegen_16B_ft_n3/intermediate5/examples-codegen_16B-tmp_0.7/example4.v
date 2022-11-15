// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
reg left_shift;
always @(posedge clk or posedge reset)
	if (reset==1)
	begin
	// reset all regs
	out <= 8'b0;
	left_shift <= 1'b0;
	end
	else if (load==1)
	begin
	out <= data;
	left_shift <= 1'b0;
	end
	else if (left_shift==1)
	begin
	out <= out; // execute rotation
	left_shift <= 0; // reset left shift flag
	end
	else
	begin
	left_shift <= 1;
	end
always @(*)
begin
 case(amount)
 3'b000:
	out = out;
 3'b001:
	out = {out[6:0], out[7]};
 3'b010:
end
endmodule
