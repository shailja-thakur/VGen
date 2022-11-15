// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*) begin
 case(in) 
 3'd00: pos = 2'b00; 
 3'd01: pos = 2'b10; 
 3'd02: pos = 2'b10;
 3'd03: pos = 2'b00;
 3'd04: pos = 2'b01;
 3'd05: pos = 2'b00;
 3'd06: pos = 2'b01;
 3'd07: pos = 2'b00;
 3'd08: pos = 2'b10;
 3'd09: pos = 2'b00;
 3'd10: pos = 2'b01; 
 3'd11: pos = 2'b11;
 3'd12: pos = 2'b11;
 3'd13: pos = 2'b11;
 3'd14: pos = 2'b11;
 3'd15: posend
endmodule
