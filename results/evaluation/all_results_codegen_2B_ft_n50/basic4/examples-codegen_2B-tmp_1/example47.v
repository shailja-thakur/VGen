// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// Notice the connections to the mux and the two sub-modules.
// These are the ports in the declaration of the module.
output [4:0] con = 0;

modified_mux mux(
.a(a[4]), .b(b[4]), .sel(sel),
.y1(a[3]), .y2(b[3]),
.y3(a[2]), .y4(b[2]),
.y5(a[1]), .y6(b[1]),
.y7(a[0]), .y8(b[0]),
.sel(con[1]),
.out1(con[0]) 
);
endmodule
