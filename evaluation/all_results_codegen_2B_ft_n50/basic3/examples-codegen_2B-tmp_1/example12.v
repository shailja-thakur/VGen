// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// select HIGH or LOW priority
always @(in)
 begin
 casex(in)
 8'bxxxxxxx1: pos = 2'b11;
 8'bxxxxxxx0: pos = 2'b10;
 8'bxxxxxx00: pos = 2'b01;
 8'bxxxxxx01: pos = 2'b00;
 8'bxxxxx101: pos = 2'b11;
 8'bxxxx1011: pos = 2'b10;
 8'bxxxx1001: pos = 2'b01;
 8'bxxxx1000: pos = 2'b00;
 default: pos = 2'b00;
 endcase
 end
endmodule
