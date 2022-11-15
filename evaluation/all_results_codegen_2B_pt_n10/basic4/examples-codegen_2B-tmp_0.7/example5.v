// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign a and b to out.

always @(*)
    sel = 0;
    if (a[3] == 1) 
        sel = 1;
    if (a[2] == 1)
        sel = 2;
    if (a[1] == 1)
        sel = 3;
    if (a[0] == 1)
        sel = 4;
    if (a[0] == 1 && a[1] == 1)
        sel = 5;
    if (a[0] == 1 && a[2] == 1)
        sel = 6;
    if (a[0] == 1 && a[3] == 1)
        sel = 7;
    if (a[1] == 1 && a[2] == 1)
        sel = 8;
    if (a[1endmodule
