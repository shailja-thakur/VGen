// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*) begin
 case(in)
 3'b000: pos <= 2'b00; // 000 > 2 > 00
 3'b001: pos <= 2'b01; // 001 > 5 <= 01
 3'b010: pos <= 2'b10; // 010 > 12 <= 10
 3'b011: pos <= 2'b11; // 011 > 19 <= 11
 3'b100: pos <= 2'b10; // 100 > 50 <= 20
 3'b101: pos <= 2'b11; // 101 > 77 = 61
 3'b110: pos <= 2'b11; // 110 > 90 = 71
 3'b111: pos <= 2'b11; // 111 > 99 = 79
 endcase
end
endmodule
