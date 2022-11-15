// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @ (posedge clk or posedge reset)
begin
	if(reset)
	begin
	out <= 0;
	end
	else begin
	if(load)
	begin
	out <= data;
	end
	else begin
	case(amount)
	3'b000:
	begin
	out <= data;
	end
	3'b001:
	begin
	out[7] <= data[0];
	out[6] <= data[1];
	out[5] <= data[2];
	out[4] <= data[3];
	out[3] <= data[4];
	out[2] <= data[5];
	out[1] <= data[6];
	out[0] <= data[7];
	end
	3'b010:
	begin
	out[7]end
end
end
end
endmodule
