// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When mode==0, assign a to out, based on a compute register bit7-4 bits of sel.
assign bout =  or_reg( out, [mode] :=
			and_sel ^ andop_c,
			andop_c <= or_reg( a ^ a_subst,
					   or_reg( a ^ andop_c, andop_c)),
			x =>
					{X(a)<=0 ? Z(x[C1[a]]) :
					 Z(C3[x[C1[a]]]) =>
					{ mux(x, t,#04).  ord=sel^mux(x, t,a);
					 X(ord)<=0 ? Z(x[C1[ord]]) : 
					 X(x[C1[ord]]) }
					}>>1endmodule
