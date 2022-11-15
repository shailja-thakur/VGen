// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always@(posedge clk)
begin
	if (reset | load)
	out=data;
	else 	
	begin
	case (amount)
	3'b000:
	//no rotation
	begin
	out=out;
	end
	3'b001:
	//rotate left
	begin
	out=(data << 1) | (data >> 7);
	end
	3'b010:
	//pop n bits left
	begin
	out=out << amount;
	end
	3'b011:
	//pop left the memeory head
	begin
	out=data;
	end
	3'b100:
	//preserve the value
	begin
	out<=data;
	end
	3'b101:
	//preserve the head
	begin	
	out=end
end
end
endmodule
