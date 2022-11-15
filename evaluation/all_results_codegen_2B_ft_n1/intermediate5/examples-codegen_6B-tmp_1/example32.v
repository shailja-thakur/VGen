// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(clk,out,load)
	begin
	if (load) out=data;
	else begin
	//$display("out is %d",out);
	case(amount)
	3'b000: out={out[2:0],out[5:3]};
	3'b001: out={out[4:3],out[6:5]};
	3'b010: out={out[5:4],out[7:6]};
	3'b011: out={out[6:5],out[8:7]};
	3'b100: out={out[7:6],out[9:8]};
	3'b101: out={out[8:7],out[10:9]};
	3'b110: out={out[9:8],out[11:10]};end
end
endmodule
