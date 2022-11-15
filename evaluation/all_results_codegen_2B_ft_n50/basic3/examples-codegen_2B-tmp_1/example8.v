// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @* 
begin
case( in )
	3'b000 : {pos,b} = 1'b0;
	3'b001 : {pos,b} = 1'b0;
	3'b010 : {pos,b} = 1'b0;
	3'b011 : {pos,b} = 1'b1;
	3'b100 : {pos,b} = 1'b0;
	3'b101 : {pos,b} = 1'b1;
	3'b110 : {pos,b} = 1'b1;
	3'b111 : {pos,b} = 1'b1;
endcase
end 
endmodule
