// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
reg [3:0] b, sel, out;
always @* begin end

{ a[0] } => sel,
//above condition ...
{ a[0] == 1} && { a[1] == 0 } { sel = 0; out = 0 }
//above to 2-input XOR 

 // a[1]=0
{ a[1] == 0 && sel = 1}
{ sel = sel | b }
{ a[1] = a[1] }
{ b = b << 1; 
  sel = sel | b[1] } { a[1] = b
//above condition
// sel = sel | b[1] } 
// above condition AND NOT REQUIRED
//{ b[1] = 1} 
//above 3-input xor

{ b[2:0]endmodule
