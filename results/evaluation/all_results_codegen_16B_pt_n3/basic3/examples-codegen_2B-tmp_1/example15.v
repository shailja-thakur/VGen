// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign b = ( in[1] := in[1] ? in[1] : (in[1]?1:0) );

// When sel=0, assign out to gate1. 
assign gate1 = out;

// This is the high priority output gate that correlates with low input bits.
//gate2 = 0;
// If any one of the input bits is high, this gate outputs high. 
assign out = (gate2[1] := !ctrl[0].neg); 
assign push_full = (!out ? 1 : 0);
assign pull_full = !out;
// If a None is produced by a pull value of 1, it is used as a priority level for subsequent
// inputs. 
assign none = (push_full ? out : ((out?1:0) + 1));

// Synthesizer main 
endmodule
