// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
//q1 = dly (input q0)
/////////////////////////
dly #(5, 1) dly1 (
.a(a[0]), .y(q0)
);
dly #(6, 1) dly2 (
.a(a[1]), .y(q1)
);
dly #(7, 1) dly3 (
.a(a[2]), .y(q2)
);
dly #(8, 1) dly4 (
.a(a[3]), .y(q3)
);
dly #(9, 1) dly5 (
.a(b[0]), .y(q4)
);
dly #(10, 1) dly6 (
.a(b[1]), .y(q5)
);
dly #(11, 1) dendmodule
