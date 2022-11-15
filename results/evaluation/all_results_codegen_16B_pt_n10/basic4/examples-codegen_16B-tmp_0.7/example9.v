// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, don't assign anything to out. 
// When sel=3, assign nothing to out.
always @(posedge clk) begin
  if (sel == 2) begin
    out <= a;
    out <= b;
  end else if (sel == 3) begin
    out <= a;
    out <= b;
  end else begin
    out <= a;
  end
end

// Design a 2-to-3 demultiplexer.
module mux_demux( 
input [4:0] a, b, c,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign b to out. 
// When sel=endmodule
