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

// Test the multiplexer.

begin
  a <= 1;
  b <= 1;
  dut <= a & b;
end

endmodule
