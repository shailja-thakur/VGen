// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or posedge reset)
	begin
	if (reset)
	out<=0;
	else if (load)
	out<=data;
	else begin	
	case(amount)
	3'b000:out<=out;
	3'b001:out<={1'b0,out[6:1]};
	3'b010:out<={2'b0,out[6:2]};
	3'b011:out<={3'b0,out[6:3]};
	3'b100:out<={4'b0,out[6:4]};
	3'b101:out<={5'b0,out[6:5]};
	3'b110:out<={6'b0,out[6:6]};
	3end
end
endmodule
