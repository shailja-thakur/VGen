// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in) begin
casex( in )
3'b000: b = 2'b00;
3'b001: b = 2'b01;
3'b010: b = 2'b10;
3'b011: b = 2'b11;
3'b100: b = 2'b10;
3'b101: b = 2'b01;
3'b110: b = 2'b11;
3'b111: b = 2'b00;
default: b = 2'b11;
endcase
end
// When sel=0, assign a to out
always @(in) begin
case( in )
3'b000: a = 2'b00;
3'b001: a = 2'b01;
3'b010: a = 2'b10;
3'b011:endmodule
