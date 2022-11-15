// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*) begin
 case (in)
 3'b000: pos = 2'b00;	// I-priority
 3'b001: pos = 2'b01;	// II-priority
 3'b010: pos = 2'b10;	// III-priority
 3'b011: pos = 2'b11;	// IV-priority
 3'b100: pos = 2'b11;	// V-priority
 default: pos = 2'b00;	// X-priority 
 endcase
end
endmodule
