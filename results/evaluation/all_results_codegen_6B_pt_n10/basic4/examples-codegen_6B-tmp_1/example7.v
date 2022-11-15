// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
always @(posedge clk or negedge a)
  redo.bin = a;
while(1)
next: select case sel:
  out = { a, b };  
case 0:
  redostat =  next;
case 1:
  redostat =  sel > 0 ? next : a;
end
endmodule
