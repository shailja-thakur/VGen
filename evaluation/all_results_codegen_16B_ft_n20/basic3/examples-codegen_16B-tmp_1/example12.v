// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (in or sel)
begin
if (sel)
	begin
	case(in[2:0]) 
	3'b000: out = 2'b00;
	3'b001: out = 2'b01;
	3'b010: out = 2'b10;
	3'b011: out = 2'b11;
	// If none of in's bits are high, output is zero
	default: out=2'b00;
	endcase
	end
// If sel=0, ouput is (along with "pos") what input("in") is when sel=1
else 
	begin
	// Set output to be input value when sel=0
	
//ZEROES THE POSITION FLAG UNLESS ALL OF THE INPUTS ARE ZEROS
	if(in[2:0end
endmodule
