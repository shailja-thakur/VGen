// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always @ (posedge clk, posedge reset)
begin
	if(reset)
	begin
	// when reset is high, set out to zero
	out = 8'b0;
	end
	else if(load)
	begin
	// when load is high, load data to out
	out = data;
	end
	else
	begin
	// when reset and load are low, left shift and rotate
	case(amount)
	3'd0: out = {out[6:0],out[7]};
	3'd1: out = {out[5:0],out[7:6]};
	3'd2: out = {out[4:0],out[7:6]};
	3'd3: out = {out[3:0],out[7:6]};
	3'd4: out = {outend
end
endmodule
