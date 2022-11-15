// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*) begin	
case (in)
	3'd0: pos = 2'd0;	// Inputs 011 and 111 stay the same
	3'd1: pos = 2'd0;
	3'd2: pos = 2'd1;
	3'd3: pos = 2'd1;
	3'd4: pos = 2'd2;
	3'd5: pos = 2'd2;
	3'd6: pos = 2'd2;
	3'd7: pos = 2'd3;
	default : pos = 2'd0;
endcase
end
endmodule
