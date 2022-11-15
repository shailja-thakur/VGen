// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @*  begin
	if(!load) begin
		case(amount)
			0 : out=data;
			case<2> begin
				1 : out=data<<1;
			case<3> begin
				2 : out=data>>1;
		endcase
	end
	otherwise begin
		case(amount)
			0 : out=data;
			case<2> begin
				1 : out=data<<1;
			case<3> begin
				2 : out=data>>1;
			case<4> begin
				3 : out=data^7;
			case<5> begin
				4 : out=data^((7<<8));
			case<6> begin
				5 : out=data^(((7<<8)>>8));
			case<7> begin
				6 : out=data^(1<<end
end
end
end
end
end
end
end
end
endmodule
