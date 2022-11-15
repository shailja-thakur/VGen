// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// Implementation of a two-to-one mux
always @*
case (in)
// When in=x0 or in=x1, out=0
3'b000, 3'b001: pos <= 2'h0;
// When in=x2 or in=x3, out=1
3'b010, 3'b011: pos <= 2'h1;
// When in=x4, out=0
3'b100: pos <= 2'h0;
// When in=x5, out=1
3'b101: pos <= 2'h1;
// When in=x6, out=x7, x7, out=0
3'b110: pos <= 2'h7;
// When in=x7, out=0
3'b111: pos <= 2'h0;
endcase
endmodule
