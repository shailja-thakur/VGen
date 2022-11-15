// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
always @ (posedge clk or negedge rst) begin
  if (rst) begin
    // activation
    out <= 0;
  end
  instance(X) : instance_sel <= sel;
  instance(N) : instance_sel <= 1'b0;
  instance(M) : instance_sel <= 1'b1;
  assign out = (a[4:0] & a('x')) | (b(4:0) & b('x') & ~a('x'));
end

endmodule
