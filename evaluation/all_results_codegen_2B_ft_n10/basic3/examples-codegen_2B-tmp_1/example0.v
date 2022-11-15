// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*) begin
casex( in )
3'b0xxx: pos = 2'd2;
3'b101x: pos = 2'd1;
3'b111x: pos = 2'd0;
default: pos = 2'b00;
endcase
end
/*
always @(*) begin
//
casex( in )
3'b0011: pos = 2'd1;
3'b0010: pos=2'd2;
3'b0111: pos = 2'd0;
default: pos = 2'b00;
endcase
end
*/
endmodule
