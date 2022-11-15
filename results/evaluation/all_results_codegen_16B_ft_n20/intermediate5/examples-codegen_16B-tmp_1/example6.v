// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
parameter [3:0] S0 = 4'd0,S1 = 4'd1,S2 = 4'd2,S3 = 4'd3,S4 = 4'd4;

reg [7:0] shift_reg;
reg [2:0] rot_reg;
reg [2:0] rot_tmp;
reg [3:0] state;

initial
begin
	shift_reg <= 0;
	rot_reg <= 0;
	rot_tmp <= 0;
end
assign angle1_in = amount-1;
assign angle2_in = amount-1;
assign degree1_in = amount;
assign degree2_in = amount;
always @(posedge clk or posedge reset)
begin
	if (reset)
	begin
	shift_reg	<= 0;
	end
	elseend
endmodule
