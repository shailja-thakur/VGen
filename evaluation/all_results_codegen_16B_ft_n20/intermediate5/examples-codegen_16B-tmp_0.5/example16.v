// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always @ (posedge clk or posedge reset)
begin
	if (reset)
	begin
//if load is high, then load data into the register
	if (load)
	begin
//loop through the bits of the input data and left shift them
	for (i=0;i<8;i=i+1)
	begin
//left shift the data in the loop by the amount
	out[i] <= data[i+amount];
	end
	end
	end
end
endmodule
