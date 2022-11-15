// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always@(posedge clk,posedge reset)
begin
	if(reset == 1)
	begin
	out <= 8'b0;
	end
	else
	begin
	if(load)
	out <= data;
	else
	begin
	case(amount)
	3'b000:
	out <= {data[0],data[1],data[2],data[3]};
	3'b001:
	out <= {data[4],data[5],data[6],data[7]};
	3'b010:
	out <= {data[1],data[2],data[3],data[4]};
	3'b011:
	out <= {data[5],data[6],data[7],data[0]};
	3'b100:
	out <= {data[2],dataend
end
end
endmodule
