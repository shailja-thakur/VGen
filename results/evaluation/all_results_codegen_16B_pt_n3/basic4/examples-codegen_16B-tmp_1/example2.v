// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
always @(posedge clk)
  if (sel==0)
    out = a; 
  else if (sel==1)
     out= b; // Use if() when it is named in variables (preferable to named (1) 
           // tristate in this context). This trivial coding of a 1T flip-flop 
           // would not have worked otherwise.
endmodule
