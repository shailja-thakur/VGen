// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// There are a couple of different ways to do this.
reg [4:0] out;
always @ (a or b or sel) begin
if (sel == 0) out = a;
else out = b;
end
endmodule
