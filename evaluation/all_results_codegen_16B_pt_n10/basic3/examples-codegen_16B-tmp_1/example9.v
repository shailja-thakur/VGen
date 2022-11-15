// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, rotate b left until pos is input. [...]
assign out = select sel (
		assign sel = in [2],
// When sel=1, assign b to out
// When sel=0, rotate b left until pos is input. [...]
		assign b = 
			when (sel==0) => pos >=0
				(
				(input==0) && (sel==0) => select sel (drop (pos+1) ),
				(input==1) && (sel==1) => select sel (drop (pos+2) ),
				)
			else (pos+3);
ENDMODULE

// Assumes in is positive if sel=0 and negative if sel=1
module input_neg_sel(
input [3:0] in,
output [3:0] out,
outputendmodule
