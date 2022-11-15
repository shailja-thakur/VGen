// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// x,y,z = h,e,l
always @ (in) 
begin
case (in)
0 : {pos, in} <= 3'b100;
1 : {pos, in} <= 3'b011;
2 : {pos, in} <= 3'b001;
3 : {pos, in} <= 3'b000;
endcase
end
endmodule
