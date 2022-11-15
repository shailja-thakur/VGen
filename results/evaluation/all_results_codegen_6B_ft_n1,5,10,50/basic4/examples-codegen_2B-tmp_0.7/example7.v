// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When sel=2, assign '_' to out. 
// When sel=3, assign neither a nor b to out.

/*
 * Mux Compiler
 * @author: Alberto Montesino <alberto@mpl.es>
 * @version: 1.0
 * @date: 28/10/2014
 */
//#pragma Xilinx interface "mux"

void mux_driver()
{
  mux #( "a", b, sel, out ); f1 = ~out;
  mux #( "a", b, sel, out ); f2 = out;
  mux #( "b", a, sel, out ); f3 = ~out;
  mux #( "b", a, sel, out ); f4 = out;
  mux #( "b", a,endmodule
