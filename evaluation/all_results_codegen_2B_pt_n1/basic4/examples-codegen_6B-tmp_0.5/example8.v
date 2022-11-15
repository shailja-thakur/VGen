// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
always @(posedge clk or negedge rst) begin
  if (rst) begin
    out[0] <= 0;
    out[1] <= 0;
    out[2] <= 0;
    out[3] <= 0;
  end
  else begin
    sel <= a[0];
    sel <= b[0];
    sel <= a[1];
    sel <= b[1];
    sel <= a[2];
    sel <= b[2];
    sel <= a[3];
    sel <= b[3];
    out[0] <= sel;
    out[1] <= sel;
    out[2] <= sel;
    out[3] <= sel;
  end
end

endmodule
