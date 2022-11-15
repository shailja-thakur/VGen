// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When sel=2, assign both a and b to out. 
// When sel=3, do nothing.
// When sel=4, sel=1
// When sel=5, sel=2
// When sel=6, sel=3
// When sel=7, sel=4


// A simple function to demonstrate the use of mux.
function tst();
    mux( sel, out, a, b );
    tst( out );
endfunction

initial begin
    tst();
    tst();
    tst();
    tst();
end
endmodule
