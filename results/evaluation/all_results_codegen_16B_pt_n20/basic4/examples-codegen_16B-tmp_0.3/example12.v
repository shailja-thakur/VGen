// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
always @(posedge clk) begin
  if (sel == 0) begin
    out <= a;
  end else begin
    out <= b;
  end
end

// Design a 4-to-1 demultiplexer.
module demux( 
input [4:0] a, b, c, d,
output [4:0] out );
// When a=0, assign b to out. 
// When a=1, assign c to out. 
// When a=2, assign d to out. 
always @(posedge clk) begin
  if (a == 0) begin
    out <= b;
  end else if (a == 1) begin
    out <= c;
  end else if (a == 2) begin
    out <= d;
  end
end

// Design a 4-to-endmodule
