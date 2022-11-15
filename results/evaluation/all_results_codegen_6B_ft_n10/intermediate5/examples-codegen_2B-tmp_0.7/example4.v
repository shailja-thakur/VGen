// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// rotate the register out followed by shift left by amount bits
// when reset is high, reset the register and set out to 0
always@(posedge clk)
begin
	if(reset)
	begin
	out <= 8'b0;
	end
	else
	begin
	if(load)
	begin
	out <= data;
	end
	else
	begin
	if(amount == 0)
	begin
	out <= out;
	end
	else
	begin
	out <= {out[6:0],out[7]};
	end
	end
end
end
endmodule
