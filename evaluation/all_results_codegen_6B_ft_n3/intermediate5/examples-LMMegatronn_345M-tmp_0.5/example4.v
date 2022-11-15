// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// rotate the register out followed by shift left by amount bits
reg [7:0] s;
reg [7:0] i;
reg [7:0] j;
reg [7:0] tmp;
reg [7:0] out;
reg [7:0] acc;

always @(posedge clk or posedge reset)
begin
	if (reset)
	begin
		acc = 0;
		out = 0;
		tmp = 0;
		out[7:0] = 0;
		for(i = 0; i < 8; i = i + 1)
		begin
			tmp = i;
			s = acc;
			tmp = acc + data;
			out[7:0] = tmp[7:0];
		end
	end
	else if (load)
	begin
		acc = dataend
end
endmodule
