// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk)
begin
	if(reset)
	begin
	if(load)
	begin
	out<=data;
	end
	else
	begin
	case(amount)
	3'b000:
	begin
	out[7:0] <= out[0:7];
	out[0:7] <= data[7:0];
	end
	3'b001:
	begin
	out[7:1] <= out[0:6];
	out[0:6] <= data[7:1];
	end
	3'b010:
	begin
	out[7:2] <= out[0:5];
	out[0:5] <= data[7:2];
	end
	3'b011:
	begin
	out[7:3] <= out[end
end
end
end
endmodule
