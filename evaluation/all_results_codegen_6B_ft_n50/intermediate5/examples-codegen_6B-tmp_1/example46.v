// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or posedge reset) begin
	if (reset==1'b1) begin
	out=0;
	end
	//$display($time," L %d %d %d",out,amount,data);
	if (load==1'b1)
	out=data;
	else 
	begin
	case(amount)
	3'b000: out=out; // no change
	3'b001: out={out[6:0],out[7]}; // shift right
	3'b010: out={out[5:0],out[6]}; // shift right
	3'b011: out={out[4:0],out[5]}; // shift right
	3'b100: out={out[3:0],out[4]}; // shift right
	3'b101: outend
end
endmodule
