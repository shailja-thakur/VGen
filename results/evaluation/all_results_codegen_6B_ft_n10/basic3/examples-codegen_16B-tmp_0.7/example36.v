// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ ( in ) 
	begin
	// For each bit in the input vector...
	for ( byte_index = 0; byte_index <= (2**3)-1; byte_index = byte_index + 1 ) 
	begin
	// Case statement for each bit in the byte
	case ( in[byte_index*8 +: 8] )
	16'h0001:
	// When the first bit is low, output is 0
	begin
	pos = 2'b00;
	end
	16'h0002:
	// When the second bit is low, output is 1
	begin
	pos = 2'b01;
	end
	16'h0004:
	// When the third bit is low, output is 2
	begin
	pos = 2'b10;
	end
	16'h0008:
	// Whenend
end
endmodule
