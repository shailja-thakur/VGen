// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When sel=2, assign high to out.
// When sel=3, assign low to out.
always @(posedge clk) begin
  if (sel==0) out <= a;
  else if (sel==1) out <= b;
  else if (sel==2) out <= 1'b1;
  else if (sel==3) out <= 1'b0;
end
endmodule
