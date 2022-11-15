// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @( * )
	case ( in )
	// Integer values should be the same as decimal 0-7
	3'd0: pos = 2'b00; 3'd1: pos = 2'b00; 3'd2: pos = 2'b00; 3'd3: pos = 2'b00;
	3'd4: pos = 2'b00; 3'd5: pos = 2'b00; 3'd6: pos = 2'b00; 3'd7: pos = 2'b00;
	// Arithmetic operators are all mapped to 000000 (zero). 
	3'd8: pos = 2'b00; 3'd9: pos = 2'b00; 3'd10:pos = 2'b00; 3'd11:pos = 2'b00;
	3'd12:pos = 2'b00; 3'd13:pos = 2'bendmodule
