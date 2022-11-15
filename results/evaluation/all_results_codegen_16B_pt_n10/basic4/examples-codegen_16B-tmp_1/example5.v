// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
always @(posedge clk) begin
if ((sel==0) & (a!=old_a)) begin
   old_a=a;
   out=a;
end
else begin
   if ((sel==1) & (b!=old_b)) begin
      old_b=b;
      out=b;
   end
end
end
endmodule
