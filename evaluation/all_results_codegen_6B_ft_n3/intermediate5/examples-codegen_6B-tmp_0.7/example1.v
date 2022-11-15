// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// rotate the register out followed by shift left by amount bits
always @(posedge clk or negedge reset)
	begin
	if(reset==1'b0)	//reset is active low
	out<=0;
	else if(load==1'b1)
	out<=data;
	else 
	begin
	case(amount)
	3'b000: out<=out;
	3'b001: out<=out>>1;
	3'b010: out<=out>>2;
	3'b011: out<=out>>3;
	3'b100: out<=out>>4;
	3'b101: out<=out>>5;
	3'b110: out<=out>>6;
	3'b111: out<=out>>7;
	endcase
	end
	end
endmodule
