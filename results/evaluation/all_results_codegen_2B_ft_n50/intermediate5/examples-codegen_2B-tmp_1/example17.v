// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @ (posedge clk ) begin
if (reset) out = 0;
else 
	begin
	if(load) data<=out;
	else
	case(amount)
	3'b000: out = data;
	3'b001: out = {1'b0,data[7:1]};	//	left shift
	3'b010: out = {data[6:0],1'b0};
	3'b011: out = {1'b0,data[7:2]};	//	left shift
	3'b100: out = {data[7:0],1'b0};
	3'b101: out = {{8{data[7]}},1'b0};	// left shift and invert 1st bit
	3'b110: out = {{{data[7]},1end
end
endmodule
