// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always @(posedge clk, posedge reset)
begin
	if (reset)
	begin
	out <= 0;
	end
	else if (load)
	begin
	out <= data;
	end
	else
	begin
	out <= {out[6:0],out[7]^out[0]^out[1]^out[2]^out[3]^out[4]^out[5]^out[6]^out[7]};
	if (amount > 1)
	begin
	out <= {out[5:0],out[7:1]};
	end
	if (amount > 2)
	begin
	out <= {out[4:0],out[7:2]};
	end
	if (amount > 3)
	begin
	out <= {out[3:0],outend
end
end
endmodule
