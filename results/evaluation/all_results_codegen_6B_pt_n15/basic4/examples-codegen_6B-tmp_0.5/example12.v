// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
always @(posedge clk or negedge rst) begin
  if (rst) begin
    sel <= 0;
    out <= 0;
  end
  else if (sel) begin
    out <= a;
  end
  else begin
    out <= b;
  end
end

// Testbench

#include "test_mux.h"

int
main( void )
{
  bool sel = true;
  bool a = false;
  bool b = true;
  for (int i = 0; i < 4; i++) {
    a |= sel & 1 << i;
    b |= sel & 1 << i;
    sel <<= 1;
  }
  if ( a && b ) {
    assert( out == 1 );
  } else {
    assert( out == 0 );endmodule
