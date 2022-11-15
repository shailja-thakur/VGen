// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// In Verilog, a sequential block is defined by
// always @(sensitivity list) 
// begin
// sequential statements
// end
 
// Edit the code below to define mux.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
always @ (a,b,sel)
begin
if (sel == 0)
out = a;
else
out = b;
end
endmodule
