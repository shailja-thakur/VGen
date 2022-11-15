// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign a | b to out. 
// When sel=3, assign a & b to out. 
always @(posedge clk) begin
  if (sel == 0) begin
    out <= a;
  end else begin
    if (sel == 1) begin
      out <= b;
    end else begin
      if (sel == 2) begin
        out <= a | b;
      end else begin
        if (sel == 3) begin
          out <= a & b;
        end
      end
    end
  end
end
endmodule
