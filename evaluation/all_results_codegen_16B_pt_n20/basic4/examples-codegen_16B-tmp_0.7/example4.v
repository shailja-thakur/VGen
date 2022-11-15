// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When sel=2, do nothing.
// When sel=3, assign both to out.
always @( posedge clk )
    if ( sel )
        out <= a; 
    else if ( sel > 1 )
        out <= b;
endmodule
