// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always@(in[2])
	case({in[2], in[1], in[0]}) 
		2'b00:
			pos = 1; 
		2'b01:
			pos = 2; 
		2'b10:
			pos = 3; 
		2'b11:
			pos = 4; 
		default:
			pos = 4;
	endcase
endmodule
