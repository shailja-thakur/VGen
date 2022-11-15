// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always@(posedge clk,negedge reset)
if(reset==0)
begin
out<=0;
end
else if(load==1)
begin
out<=data;
end
else
begin
	case(amount)
	3'b000:
	begin
	out<=out;
	end
	3'b001:
	begin
	out<={out[0],out[7:1]};
	end
	3'b010:
	begin
	out<={out[1:0],out[7:2]};
	end
	3'b011:
	begin
	out<={out[2:0],out[7:3]};
	end
	3'b100:
	begin
	out<={out[3:0],out[7:4]};
	endend
endmodule
