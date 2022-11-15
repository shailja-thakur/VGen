// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
always @(posedge clk or negedge rst) begin
  if(rst) begin
    out <= 0;
  end
  else begin
    out <= sel ? a : b;
  end
end

module mux2( 
input [4:0] a, b,
input sel,
output [4:0] out1, output [4:0] out2 );
// When sel=0, assign a to out1 and b to out2.
// When sel=1, assign a to out2 and b to out1.
always @(posedge clk or negedge rst) begin
  if(rst) begin
    out1 <= 0;
    out2 <= 0;
  end
  else begin
    out1 <= sel ? a : b;
    out2 <= sel ? bend
end
endmodule
