// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*) begin
 case(in) // Begin case statements with no DEFAULT
 3'b000: begin // 000 --> 00, result = 00
 pos = 2'b00; // Set output
 end
 3'b001: begin // 001 --> 01, result = 01
 pos = 2'b01; // Set output
 end
 3'b010: begin // 010 --> 10, result = 10
 pos = 2'b10; // Set output
 end
 3'b011: begin // 011 --> 11, result = 11
 pos = 2'b11; // Set output
 end
 3'b100: begin // 100 --> 11, result = 11
 pos = 2'b10; // Set output
 end
 3'b101: begin // 101 --> 10, result = 10
 pos = 2'b01; // Set output
 end
 3'b110: begin // 110 --> 10endmodule
