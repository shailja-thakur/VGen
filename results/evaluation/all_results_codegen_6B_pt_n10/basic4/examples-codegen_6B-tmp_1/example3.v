// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

j = 4;
while (j--) {
    if (sel) {
        out[j] = b[j];
    }
    else {
        out[j] = a[j];
    }
}
endmodule
