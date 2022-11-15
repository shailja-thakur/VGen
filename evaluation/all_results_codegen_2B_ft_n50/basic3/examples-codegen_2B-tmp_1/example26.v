// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in or pos) begin
case(pos)
0 : begin out = 1'b0; b = in[2]; end
1 : begin out = 1'b0; b = in[1]; end
default : begin out = 1'b1; b = in[1]; end
endcase
end
endmodule
