// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ ( * ) 
begin
case(in)
0: pos=0;
1: pos=1;
2: pos=2;
3: pos=1;
4: pos=2;
5: pos=2;
6: pos=0;
7: pos=2;
8: pos=1;
endcase
end
endmodule
