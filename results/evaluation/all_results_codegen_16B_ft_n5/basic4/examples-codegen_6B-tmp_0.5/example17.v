// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
always @(posedge clk or negedge rst) begin
  if (rst) begin
  end
  else begin
    out[sel] <= a[sel];
  end
end

// Testbench for mux module.

begin
  a <= 1;
  b <= 2;
  out <= 0;
  clk <= 1;
  rst <= 1;
end

endmodule
