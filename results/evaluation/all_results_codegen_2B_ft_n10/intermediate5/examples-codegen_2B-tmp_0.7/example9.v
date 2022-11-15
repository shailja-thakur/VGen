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
	if(reset) begin
	out<=8'b0;
	end
	else if(load)
	out<=data;
	else begin
	case(amount)
	3'b000:out<=data;
	3'b001:out<=data<<1;
	3'b010:out<=data<<2;
	3'b011:out<=data<<3;
	3'b100:out<=data<<4;
	3'b101:out<=data<<5;
	3'b110:out<=data<<6;
	3'b111:out<=data<<7;
	endcase
	end
end
endmodule
