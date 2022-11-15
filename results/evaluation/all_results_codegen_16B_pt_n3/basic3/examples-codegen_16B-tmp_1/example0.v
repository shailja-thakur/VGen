// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, assign av to out
always
begin
   case(
      ( ~ in[1:0] & in[2:0] ),
      ( ? pos.b, 0 )
   )
// When sel=2, assign av to out
   case(
      ( ~in[0] & in[1:0] ),
      ( ? pos.a, 0 )
   );
// When sel=3, assign b to out
// end case
end
endmodule
