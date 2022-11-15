// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When sel=2, assign a to out.
// When sel=3, assign b to out.

always @(*)
begin
    if (sel == 0)
        out[0] = a[0];
    else if (sel == 1)
        out[1] = a[1];
    else if (sel == 2)
        out[2] = a[2];
    else if (sel == 3)
        out[3] = a[3];
end

// Design a 2-to-2 multiplexer.
module mux2( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When sel=2, assign a to outendmodule
