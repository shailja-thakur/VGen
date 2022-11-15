// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
* down = sel;
* left = ~((sel | down) << 1);
* right = ~down & ~left;
* up = ~down & (right >> 1);
 * up = ~down & ~left &
 *        ~((sel | down) << 1) & ~(~down & ~left);
endmodule
