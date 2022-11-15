// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
always @(posedge clk or negedge rst) begin
  if (rst) begin
    for (int i=0; i<4; i++) out[i] <= 0;
  end
  else begin
    sel <= a[sel];
    out[sel] <= b[sel];
  end
end

module mux_ff( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
always @(posedge clk or negedge rst) begin
  if (rst) begin
    for (int i=0; i<4; i++) out[i] <= 0;
  end
  else begin
    sel <= a[selend
end
endmodule
