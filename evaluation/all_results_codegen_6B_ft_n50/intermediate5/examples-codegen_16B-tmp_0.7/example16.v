// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk,posedge reset)
begin
	if(reset)
	begin
	out <=8'b0;
	end
	else if(load)
	begin
	out <= data;
	end
	else if(amount == 3'b111)
	begin
	out <= {out[6:0],out[7]};
	end
	else
	begin
	out <= left_rotate_out;
	end
end
// implementation of left rotate
// both shift and rotate take place withing a single shift instruction
// amount is the rotation amount
always @(*)
begin
	case(amount)
	3'b000: left_rotate_out <= data;
	3'b001: left_rotate_out <= {data[7],data[7:1]};
	3'b010: leftend
endmodule
