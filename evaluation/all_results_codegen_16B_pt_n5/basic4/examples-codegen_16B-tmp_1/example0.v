// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
 
// The middle 2 muxes sel to bits 25-26, the upper 2 spread sel to bits 28-29.

module xor(
  input [24:0] x,
  input sel,
  output [24:0] y );
   
  reg [4:0] h,l, a1,b1,out;
  reg [4:0] h1,l1, a2,b2,out1;
  var [4:0] tmp;
  always @(posedge clk) begin
     if (sel) begin
      case(a>>4)
       8'b00 (+) case(a>>5)
       8'b00 (-) case(a>>6)
       8'b00 (>) case(a>>7)
       out <= a1 + tmp + b1;
      end
end
endmodule
