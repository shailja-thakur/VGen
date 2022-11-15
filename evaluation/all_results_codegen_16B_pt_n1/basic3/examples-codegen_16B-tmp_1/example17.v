// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (in) begin
case (in)
0: pos=2'b0; 
1: pos=2'b1;
2: pos=2'b10;
3: pos=2'b11;
4: pos=2'b100;
5: pos=2'b101;
6: pos=2'b110;
7: pos=2'b111; 
endcase
end
endmodule
