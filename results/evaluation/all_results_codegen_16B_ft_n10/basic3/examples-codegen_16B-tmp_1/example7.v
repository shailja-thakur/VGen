// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0 & 0 in=1, assign 1 to out
// When sel=0 & 0 in=0, check the other input bits
// When sel=0 & 1 in=1, assign 2 to out
always @ ( in or sel) begin
	// don't need pos= ( (in[0]&sel) | (in[1]&sel) |(in[2] &sel))
	 // Can also use for pos:
	 // 	assign pos = (sel) ? (~in[2:0] +2'b01) : (in[2:0]); 
	if (sel)
	// this is writing a function inside an always block.
	// 'pos' will change whenever in changes value, but not when sel changes.
	// Thus, the output is always equal to (in[2:0] xor 2end
endmodule
