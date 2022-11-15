// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (in or negedge pos)
begin
if( ~pos ) // active low
pos = 1'b0; end
else begin
casex (in) // case statement x
3'x0 : pos = 2'b00; 
3'x1 : pos = 2'b01;
3'x1 : pos = 2'b10; 
3'x2 : pos = 2'b10;
default : pos = 2'b10;
endcase
end
endmodule
