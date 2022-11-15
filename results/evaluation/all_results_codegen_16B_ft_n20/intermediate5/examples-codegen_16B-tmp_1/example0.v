// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
reg [7:0] temp;
always@(posedge clk or posedge reset)
begin
if(reset)
out<=0;
else if(load)
out<=data;
else 
begin
	temp<=data;
	if(amount!=0)
	begin
	case(amount)
	3'b000:
	begin
	out<=temp;
	end
	3'b001:
	begin
	out[7:1]<=temp[6:0];
	out[0]<=temp[7];
	end
	3'b010:
	begin
	out[7:2]<=temp[6:0];
	out[1:0]<=temp[7:3];
	end
	3'b011:
	begin
	out[7:3]end
end
end
end
endmodule
