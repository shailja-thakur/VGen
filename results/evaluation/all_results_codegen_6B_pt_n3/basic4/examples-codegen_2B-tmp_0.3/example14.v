// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When sel=2, assign 0 to out.
// When sel=3, assign 1 to out.

always @(*)
begin
    if (sel == 0)
        out[0] = a;
    else if (sel == 1)
        out[1] = b;
    else if (sel == 2)
        out[2] = 0;
    else if (sel == 3)
        out[3] = 1;
end

// Design a 2-to-1 multiplexer.
module mux( 
input [3:0] a, b,
input sel,
output [3:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When sel=2, assign 0 to out.
// When sel=3,endmodule
