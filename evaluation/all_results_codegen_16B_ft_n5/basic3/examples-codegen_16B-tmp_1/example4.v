// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in or sel)
begin: sel_1
case(sel)
1'b0: pos=2'bxx; //if sel=0, output all 0s
1'b1: pos=2'b11; //if sel=1, output all 1s
default: pos=2'b00; //default case outputs nothing
endcase
end
endmodule
