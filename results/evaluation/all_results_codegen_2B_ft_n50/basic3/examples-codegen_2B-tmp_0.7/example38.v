// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*) begin
casex (in)
3'b1xxx: pos = {1'bx,1'bx};
3'b01xx: pos = {1'b0,1'bx};
3'b001x: pos = {1'bx,1'b0};
3'b000x: pos = {1'bx,1'bx};
default: pos = {1'bx,1'bx};
endcase
end
endmodule
