// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// The data bus issomething like S, R, ST, and LR, therefore:
// When sel=0, assign S and R to a.
// When sel=1, assign L and R to b.
// individual submodules are considered separately connected to each other, 
// hence each connection has its own wires/registers.

	mux2to1 m0( 
.a(a[0]), 
.b(b[0]), 
.sel(sel), 
.out(out[0])
	);
	mux2to1 m1( 
.a(a[1]), 
.b(b[1]), 
.sel(sel), 
.out(out[1])
	);
	mux2to1 m2( 
.a(a[2]), 
.b(b[2]), 
endmodule
