// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always@(posedge clk,negedge reset)
begin
	if (reset == 0)
	begin
	// reset
	out = 8'b0;
	end
	else if (load)
	begin
	// load
	out = data;
	end
	else if (amount != 3'b000)
	begin
	// left shift and rotate
	out = {out[6:0],out[7]};
	out = out << amount;
	out = out | out >> 8;
	end
	else
	out = out;
end
endmodule
