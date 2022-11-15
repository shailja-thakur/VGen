// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

export instances;
export signals { sel, out[4:0], a, b };
*/
  .signal("sel")
  .signal("out", function() { return [this.m, this.v, this.a, ..this.b] })
  .signal("out", function() { return [this.m, this.v, this.b, ..this.a] })
  .signal("a")
  .signal("b")
  .or_signal("a")
  .or_signal("b");
endmodule
