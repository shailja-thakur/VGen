// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

always @(posedge clk)
begin
  if (sel == 1)
    out[0] = a;
  else
    out[0] = b;
end

// When sel=0, assign a to out. 
// When sel=1, assign b to out.

always @(posedge clk)
begin
  if (sel == 0)
    out[1] = a;
  else
    out[1] = b;
end

// When sel=0, assign a to out. 
// When sel=1, assign b to out.

always @(posedge clk)
begin
  if (sel == 1)
    out[2] = a;
  else
    out[2] = b;
end

// When sel=0, assign a to out. endmodule
