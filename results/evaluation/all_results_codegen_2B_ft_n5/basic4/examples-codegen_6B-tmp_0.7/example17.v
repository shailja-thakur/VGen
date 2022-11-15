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
    switch (sel) begin
      case 0: out <= a; break;
      case 1: out <= b; break;
      default: out <= 0;
    end
  end
end

module mux2( 
input [4:0] a, b,
input sel,
output sel_out,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
always @(posedge clk or negedge rst) begin
  if (rst) begin
    sel_out <= 0;
  end
  else begin
    switch (sel) begin
      case 0:end
end
end
endmodule
