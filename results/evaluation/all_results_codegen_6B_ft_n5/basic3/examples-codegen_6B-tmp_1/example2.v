// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
parameter sel=1;
always @ (in or pos) 
	begin 
	case(in) // case in[2:1]:
	3'b11: pos=2'b00;
	3'b10: pos=2'b01;
	3'b01: pos=2'b10;
	3'b00: pos=2'b11;
	//default pos=2'bxx;
	endcase
	end
endmodule
