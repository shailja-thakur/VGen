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
    if (sel) out <= a;
    else out <= b;
  end
end

// assign a = b
always @(posedge clk or negedge rst) begin
  if (rst) begin
    a <= 0;
  end
  else begin
    a <= b;
  end
end

endmodule
