// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// NO USRE YM, select to a sel == 0, to become a carry to
// wire.
wire [1:0] sel_all, sel_lohi;
mux2 select_0(.a(a[0]),.b(b[0]),.sel(sel_all),.y(sel_lohi[0]));
mux2 select_1(.a(a[1]),.b(b[1]),.sel(sel_all),.y(sel_lohi[1]));
mux2 select_2(.a(a[2]),.b(b[2]),.sel(sel_all),.y(sel_lohi[2]));
mux2 select_3(.a(a[3]),.b(b[3]),.sel(sel_all),.y(selendmodule
