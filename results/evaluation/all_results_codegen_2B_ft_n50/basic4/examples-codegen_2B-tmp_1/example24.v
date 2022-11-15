// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
wire [0:0] select;
supply0 zero;
and (select[0], sel, zero);
assign select[1] = 1'b0;
// Not sure why you would use this.
// Make b and a 1 in size logic.
not (c0, b[0]);
not (d0, a[0]);
and (c1, c0, sel);
and (d1, d0, select[0]);
and (e1, b[1], sel);
and (e2, b[2], sel);
and (f1, b[3], sel);
and (f2, b[4], sel);
or (b0, e2, e1);
or (a0, f1, f2);
endmodule
