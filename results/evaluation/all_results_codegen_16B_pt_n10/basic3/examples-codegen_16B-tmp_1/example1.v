// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always #( (((~in[2]) && (~in[1]) && (~in[0]) && (sel==1)) == false) && (out==0) )
  
  	ufunc arrzero[2]:0
		sel = 1
                 ufunc code: v
		assign out = arrzero[b];

endmodule
