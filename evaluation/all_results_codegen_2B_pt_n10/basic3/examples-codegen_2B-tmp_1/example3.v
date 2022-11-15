// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
    
wire q;
// "n" is the size of the "in" input.
    
always @(posedge in[1])  
// Assign position based on input and assign "n" to q
    q <= if ( in[1] ) 
         ( "00" & n & 
           "11" & (q>=3) &
           "00" & (q>=2) &
           (in[0] & in[1]) &
           q
         ) else
         ( "01" & n &
           "10" & (q>=3) &
           "10" & (q>=2) &
           "01" & q
         ) else
         ( "10" & n &
           "11" & (q>=3) &
           "01" & (q>=2) &
           "endmodule
