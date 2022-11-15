// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (in or negedge pos[0] or negedge pos[1]) begin
	if (pos[0] == 1'b0) begin
	// if pos[0] is 0, set pos[1] to 0 and don't output b
	// (this is a combinational circuit, so it can do this at any time)
	// (it can output b when pos[0] is 1, but this violates the posedge/negedge
	// requirement)
	pos[1] <= 1'b0;
	end
	else if (pos[0] == 1'b1) begin
	// if pos[0] is 1, output b
	pos[1] <= 1'b1;
	end
	end
endmodule
