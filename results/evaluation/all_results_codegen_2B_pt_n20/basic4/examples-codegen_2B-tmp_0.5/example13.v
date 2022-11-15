// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

always @(posedge clk) begin
  if (sel == 0)
    out[0] = a;
  else
    out[0] = b;
end

// Design a 2-to-3 multiplexer.
module mux( 
input [4:0] a, b, c,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign c to out.

always @(posedge clk) begin
  if (sel == 0)
    out[0] = a;
  else if (sel == 1)
    out[0] = b;
  else
    out[0] = c;
end

// Design a 2-to-4endmodule
