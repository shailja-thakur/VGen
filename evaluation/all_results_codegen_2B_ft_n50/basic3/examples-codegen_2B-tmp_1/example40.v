// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in) begin
case(in)
3'b000: begin
pos=2'b00;
end
3'b000: begin
pos=2'b01;
end
3'b000: begin
pos=2'b10;
end
3'b000: begin
pos=2'b11;
end
default: pos=2'b00;
endcase
end
endmodule
