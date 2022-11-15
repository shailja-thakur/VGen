// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out

 parameter LO = 0;
 parameter HI = 1;

 integer i; 

initial begin // Default values

pos = 0;

end

always @ (in or pos) begin

  if ( in[0] ) 
        pos[0] = 0;
  else if ( in[1] ) 
        pos[0] = 1;
  else if ( in[2] ) 
	        pos[0] = 2;
  else
	        pos[0] = 3; // this is a indication of error (all in's are 1, which is not possible. Hence, flag error.

  if       ( in  === 4'h0 )
	        pos  = 2'h0;
  else if  ( in  === 4'h1 )
	        pos  = 2'h1;
  else if  ( in  === 4'endmodule
