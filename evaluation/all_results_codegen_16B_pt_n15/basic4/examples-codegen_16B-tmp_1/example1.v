// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// Output a=out.
always @(posedge clk)
 begin
  if (sel==0) out <= a;
  else
// Latch input.       ALU select W2.
    if (a==3'b000 || b==3'b010) {     // a0
// Exclusive-or with alu_inv.    Out=in^alu_inv.
      out <= in^alu_inv;
    } else if (a==3'b001 || b==3'b010) { // a1
// OR together.            Out=in|alu_enc.
      out <= in|alu_enc;
    } else if (a==3'b100 || b==3'b001) { // a2
// nAND together.          Out=in&~alu_enc.
      out <= in&~end
endmodule
