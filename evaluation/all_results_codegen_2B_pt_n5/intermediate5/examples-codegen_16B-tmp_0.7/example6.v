// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always @ ( posedge clk )
begin
	if(reset)
	begin
	// when reset is high, clear out to 0
	out <= 8'b0;
	end
	else if(load)
	begin
	// when load is high, load the input data into the output 
	out <= data;
	end
	else
	begin
	// left rotate the data
	// amount is a 3 bit number, so 
	// 0 = 8'b0, 1 = 8'b1, 2 = 8'b01, 3 = 8'b001, ...
	out <= out << amount;
	end
end 
endmodule
