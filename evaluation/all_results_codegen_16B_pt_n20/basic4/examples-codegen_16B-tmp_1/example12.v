// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
export function main () { 
    sel signal = 0; 
    if (sel<2) { 
	// Do magic. 
    } 
    out = sel&1 ? b : a; 
}

//EOS VHDL
endmodule
