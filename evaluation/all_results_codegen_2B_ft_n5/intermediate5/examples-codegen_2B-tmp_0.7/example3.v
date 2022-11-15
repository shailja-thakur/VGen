// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
// Note: it is very important that the rotates be done in the same direction!
always @(posedge clk or posedge reset)
begin
	if(reset)
	begin
	out <= 0;
	end
	else if(load)
	begin
	out <= data;
	end
	else
	begin
	case(amount)
	3'b000:
	begin
	out <= {data[0],data[7:1]};
	end
	3'b001:
	begin
	out <= {data[1],data[7:2]};
	end
	3'b010:
	begin
	out <= {data[2],data[7:3]};
	end
	3'b011:
	begin
	out <= {data[3],data[7:4]};
	end
	end
end
endmodule
