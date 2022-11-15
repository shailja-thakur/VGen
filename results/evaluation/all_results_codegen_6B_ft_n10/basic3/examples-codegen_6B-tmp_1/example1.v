// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in or pos) 
begin 
	case( pos ) 
	// Lower case 
	2'b0: if(in == 3'b101)
	// equal to 2 but serial
	pos = 2'b1; 
	// Upper case 
	2'b1: if(in == 3'b110)
	// equal to 6 but serial
	pos = 2'b01; 
	// Higher case
	2'b1x: pos = 2'b10; 
	//default: pos = 2'bxx;
	endcase 
end 
endmodule
