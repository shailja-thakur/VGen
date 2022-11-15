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
	if(reset)
	begin
// when reset is high, set output to 0
// when load is high, load data to out
// left shift and rotate the register out by amount bits
// when load is low, output is previous value of out
// when reset is low, output is previous value of out
// if reset and load are both 0, output is unchanged
// if reset and load are both 1, out is set to data
// if reset is high and load is low, output is 0
// if reset is high and load is high, output is previous value of out
	end
	else
	begin
// when reset is low, output is previous value of out
// when load is high, load data to out
// left shift and rotate the register out by amount bits
// when load is low, output is previous value of outend
end
endmodule
