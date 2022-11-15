// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (in or pos ) 
begin 
case(pos) 
0 : in <=3'b000;
1 : in <=3'b001;
2 : in <=3'b010;
3 : in <=3'b011;
endcase
end 
endmodule
