// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// sel=0, a is in position 0;
always@(*) 
	casex ( in ) 
	3'b100,3'b101: pos = 2'd0; 
	3'b110: pos = 2'd0; 
	3'b001: pos = 2'd1; 
	// no default since complete 
	endcase 
always@(*) 
	casex ( in ) 
	3'b101: pos = 2'd0; 
	3'b110: pos = 2'd0; 
	3'b101: pos = 2'd1; 
	// no default since complete 
	endcase 
endmodule
