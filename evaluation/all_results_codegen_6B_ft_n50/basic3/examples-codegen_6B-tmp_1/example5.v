// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in or pos) 
begin	 	 
	case( pos ) 
	0: if( in==3'b111 ) pos=2'b00; 
	1: if( in==3'b110 ) pos=2'b01;
	2: if( in==3'b101 ) pos=2'b10;
	3: if( in==3'b100 ) pos=2'b11;
	endcase
end
endmodule
