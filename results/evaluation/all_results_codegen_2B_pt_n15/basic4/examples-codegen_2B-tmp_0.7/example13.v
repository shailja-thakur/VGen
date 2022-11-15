// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign a and b to out. 

always @(sel)
    if (sel == 0) 
        out = a;
    else if (sel == 1)
        out = b;
    else
        out = a, b;

// Check the output before writing.
wire i0 = a, i1, i2, i3;
assign i0 = i2, i2 = i3;
assign i1 = i3, i3 = i0;

reg [3:0] r0, r1, r2, r3;
reg [3:0] r4, r5, r6, r7;

mux m;

always @(posedge)
    r0 = r1, r1 = r2, r2 = r3;
    r4 = r5endmodule
