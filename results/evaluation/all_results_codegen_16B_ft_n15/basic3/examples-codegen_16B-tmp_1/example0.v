// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ ( * )
begin
 // case all inputs sequentially falling
 casex ( in ) 
 // Set output high no matter what input state is
 3'bx_xx : pos = 2'b11 ;
 // Input one bit lower than highest is output low
 3'bx1_x1: pos = 2'b00 ;
 // Input two bits lower than highest is output mid
 3'bx_11 : pos = 2'b01 ;
 // Input three bits lower than highest is output low
 3'bx1_xx: pos = 2'b00 ;
 // Otherwise output is high
 default: pos = 2'b11 ;
 endcase 
end
endmodule
