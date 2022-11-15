// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
wire [4:0] inp;

// The following defines the primitives of the multiplexer.

// 1. a -> inp[0]
// 2. a -> inp[1]
// 3. a -> inp[2]
// 4. a -> inp[3]
// 5. b -> inp[4]
// 6. b -> inp[5]
// 7. b -> inp[6]
// 8. b -> inp[7]

// The following defines the primitives of the multiplexer.

// 1. a -> out[0]
// 2. a -> out[1]
// 3. a -> out[2]
// 4. a -> out[3]
// 5. b -> out[4]
// 6. b -> out[5]
// 7. b -> out[6endmodule
