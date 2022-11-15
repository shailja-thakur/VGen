// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
always @(posedge clk or negedge a) begin
  if (sel == 0) out <= a; 
else if (sel == 1) out <= b;
end

module kio( 
input [7:0] foo,
output foo' );
b <= foo;
kio.foo <<= foo & 0x2; // Set 2s bit of foo
 // Note that only the 1s bit of foo is set.

#define klio kio.foo		// Can't rename kio::foo

always @ (posedge clk) begin		// Logic must be defined within @(posedge clk)
  if (!(klio & 2'b10))
    klio <<= 2;	// Multiplex the value of kio::foo into output
  else klio >>= 2;	// Subtract the value 29 from the valueendmodule
