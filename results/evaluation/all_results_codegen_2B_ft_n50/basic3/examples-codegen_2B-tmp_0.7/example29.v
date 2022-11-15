// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, assign b to out
always @ (in) 
begin
case (in) 
3'b000 : pos = 2'b00; // input 000 --> output 000
3'b001 : pos = 2'b01; // input 001 --> output 001
3'b010 : pos = 2'b10; // input 010 --> output 010
3'b011 : pos = 2'b11; // input 011 --> output 011
3'b100 : pos = 2'b11; // input 100 --> output 100
3'b101 : pos = 2'b11; // input 101 --> output 101
3'b110 : pos = 2'b11; // input 110 --> output 110
3'b111 : pos = 2'b11; // input 111 --> output 111
default : pos = 2'b00;
endcase
end
endmodule
