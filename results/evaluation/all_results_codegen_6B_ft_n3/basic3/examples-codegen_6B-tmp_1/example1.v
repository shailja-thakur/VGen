// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*) 
begin 
case (in) 
5'b00111: pos = 0; 
5'b01000: pos = 0; 
5'b01001: pos = 1; 
5'b01010: pos = 0; 
5'b01011: pos = 1; 
5'b01100: pos = 1; 
5'b01101: pos = 0; 
5'b01110: pos = 1; 
5'b01111: pos = 0; 
5'b10000: pos = 1; 
5'b10001: pos = 0; 
default: pos = 2'bxx; 
endcase 
end 
endmodule
