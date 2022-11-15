// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in) begin
casex (in) 
3'b000: pos = 2'b00;
3'b001: pos = 2'b01;
3'b010: pos = 2'b10;
3'b010: pos = 2'b11;
default: pos = 2'b00;
endcase
end
module comparator(
input logic [1:0] s,
input logic e,
output logic g
);
always@ (s, e) begin
	case ({s,e}) 
	4'b000: g=1'b0; #5 
	4'b010: g=1'b0; #5
	4'b001: g=1'b0; #5
	4'b001: g=1'b0; #5
	4'b011: g=1'endmodule
