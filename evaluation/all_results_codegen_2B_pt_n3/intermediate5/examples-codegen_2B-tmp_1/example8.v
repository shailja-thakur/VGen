// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// rotate the register out followed by shift left by amount bits
always @(posedge clk or negedge reset)
begin
	if(reset == 1'b0)
	begin
	out <= 0;
	end
	else
	begin
	if(load == 1'b1)
	begin
	out <= data;
	end
	else
	begin
	out <= {data[6:0],1'b0};
	end
	end
end
endmodule
