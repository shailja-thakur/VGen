// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always@(in)
	begin
	case(in)
	/*best case is 000 because that's a nop. */
	0:
	pos = 2'b00;
	1:
	pos = 2'b01;
	2:
	pos = 2'b10;
	// default will assign output to be 0
	default: 
	pos = 2'b00;
	endcase //end case
	end //end always
	end
endmodule
