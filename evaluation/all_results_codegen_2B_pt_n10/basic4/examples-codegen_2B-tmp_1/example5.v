// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=0...2, assign concat(a, b to out); in cases "a="0 and "b="0 are undefined.
main
begin 
mux a, b, sel;
out <= a[0];
out <= b[0];
out <= concat( a, b );
end
endmodule
