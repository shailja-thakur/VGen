// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
not n1	(sel_bar, sel);
and a1	(idx_0, a[4], sel_bar);
not n2	(idx_1, a[4]);
and a2	(temp_0, b[4], sel);
not n3	(temp_1, b[4]);
or r1	(out[4], idx_0, temp_0);
and a3	(idx_2, a[3], sel_bar);
not n4	(idx_3, a[3]);
and a4	(temp_2, b[3], sel);
not n5	(temp_3, b[3]);
or r2	(out[3], idx_2, temp_2);
and a5	(idx_4, a[2], selendmodule
