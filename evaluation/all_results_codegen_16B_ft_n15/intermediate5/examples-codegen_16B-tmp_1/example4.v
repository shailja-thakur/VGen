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
	if(reset==0)
	begin
	// do init here
	end
	else
	begin
	// load is high, rotate left
	if (load==1) begin
	`left_shift
	// store back the result
	out<=data;
	end
	end
end
endmodule
