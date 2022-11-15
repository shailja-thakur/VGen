// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
always @ (posedge clk) begin
  if (sel) begin
    out <= b;
  end else begin
    out <= a;
  end
end

// Design a 4-to-1 multiplexer.
module mux4( 
input [4:0] a, b, c, d,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign c to out. 
// When sel=3, assign d to out. 
always @ (posedge clk) begin
  if (sel) begin
    out <= b;
  end else begin
    if (sel==2) begin
      out <= c;
    end else begin
      out <= d;end
end
end
endmodule
