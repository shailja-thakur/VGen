// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always@(posedge clk,posedge reset)
begin
	if(reset)
	begin
	out=0;
	end
	else
	begin
	if(load)
	out=data;
	else
	begin
	case(amount)
	3'b000:
	begin
	out=out;
	end
	3'b001:
	begin
	out={data[0],data[7:1]};
	end
	3'b010:
	begin
	out={data[1:0],data[7:2]};
	end
	3'b011:
	begin
	out={data[2:0],data[7:3]};
	end
	3'b100:
	begin
	out={data[3:0],data[7:4]};
	end
end
end
end
endmodule
