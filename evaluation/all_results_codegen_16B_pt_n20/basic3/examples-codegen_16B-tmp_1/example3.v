// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=2, assign z to out
// Sel can only be 1 or 2 at time.
always @(posedge IN, posedge P, posedge OUT)
begin
  pos <= (sel==2)?1: ((sel==1)?(in&1):0);
end

endmodule
