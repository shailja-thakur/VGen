// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ ( in == 3'bx0 || in == 3'bx1 ) begin
  pos <= in;
end
// When sel=0, assign b to out
always @ ( in == 3'b00 ) begin
  pos == 1;
end
endmodule
