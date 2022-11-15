// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in)
case (in)
3'b001: {pos,pos} = 2'b11;//-> 2
3'b010: {pos,pos} = 2'b10;//-> 3
3'b100: {pos,pos} = 2'b01;//-> 4
3'b011: {pos,pos} = 2'b00;//-> 5
3'b101: {pos,pos} = 2'b11;//-> 6
3'b110: {pos,pos} = 2'b10;//-> 7
3'b111: {pos,pos} = 2'b01;//-> 8
endcase
endmodule
