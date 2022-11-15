// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always@(*)
begin
	casex(in)
	4'bxxxz: pos <= 2'bxx;	
	4'bzzxx: pos <= 2'bzz;	
	4'bxxxx: pos <= 2'bx0;
	4'bzzzz: pos <= 2'bz0;
	4'bxxxxz: pos <= 2'bx1;
	4'bzzzzd: pos <= 2'bz1;
	3'bxxxz: pos <= 2'bxx;	
	3'bzzzz: pos <= 2'bzz;	
	3'bxxxx: pos <= 2'bx0;
	3'bzzzz: pos <= 2'bz0;
	3'bxxxxd: pos <= 2'bx1;
	3'bzzzzd: pos <= 2end
endmodule
