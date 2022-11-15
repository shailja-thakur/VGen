// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

assign out[4:0] = a when a[3]='0';
assign out[4:0] = b when b[3]='0';

always @(*)
begin
  if (sel==0)
    out[3] = '0';
  else
    out[3] = '1';
end

// Design a 2-to-1 multiplexer.
module mux2( 
input [4:0] a,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

always @(*)
begin
  if (sel==0)
    out[3] = a;
  else
    out[3] = b;
end

// Design a 2-to-1endmodule
