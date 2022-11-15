// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge in)
always @(posedge pos)
begin
    if ( pos == 2 ) 
        out <= b;
end
end
`

endmodule
