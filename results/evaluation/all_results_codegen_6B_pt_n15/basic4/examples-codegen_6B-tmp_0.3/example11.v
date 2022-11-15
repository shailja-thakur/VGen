// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
always @(posedge clk or negedge rst) begin
  if (rst) begin
    out <= 0;
  end
  else begin
    out <= sel ? a : b;
  end
end

// Test the multiplexer by tracing it.
// The multiplexer should be able to handle a variety of
// signals.
// The multiplexer should be able to handle a variety of
// signals.

#define TEST_SIGNAL(x) \
  x(0) x(1) x(2) x(3)

#define TEST_SIGNALS \
  TEST_SIGNAL(a) \
  TEST_SIGNAL(b) \
  TEST_SIGNAL(sel)

TEST_SIGNALS

endmodule
