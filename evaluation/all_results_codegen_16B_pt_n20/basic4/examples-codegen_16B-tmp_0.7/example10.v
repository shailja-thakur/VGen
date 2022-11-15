// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When sel=2, assign a AND b to out.
// When sel=3, assign a OR b to out.
always @(posedge clk) begin
  if (sel == 2)
    out <= a & b;
  else if (sel == 3)
    out <= a | b;
  else if (sel == 0)
    out <= a;
  else if (sel == 1)
    out <= b;
end
endmodule
