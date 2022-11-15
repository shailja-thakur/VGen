// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out

always@ ( and_gate ) begin
pos = 2'b00;
if ( and_gate )
pos = 2'b11 ; // choose bit to 1
	
else if ( ~and_gate ) begin
if (in[0])
pos = 2'b01 ;

else if (in[1])
pos = 2'b10 ;
 
	
else if (in[2])
pos = 2'b11 ;
else
pos = 2'b00 ;

end
	

end
endmodule
