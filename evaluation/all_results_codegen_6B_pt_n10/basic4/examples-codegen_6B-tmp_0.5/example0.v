// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
always @(posedge clk)
  out <= a[sel];

// Implementation of multiplexer
//
// The multiplexer is implemented as a 2-to-1 multiplexer with
// 4 inputs and 2 outputs.
//
// The multiplexer is implemented as a 2-to-1 multiplexer with
// 4 inputs and 2 outputs.
//
// The multiplexer is implemented as a 2-to-1 multiplexer with
// 4 inputs and 2 outputs.
//
// The multiplexer is implemented as a 2-to-1 multiplexer with
// 4 inputs and 2 outputs.
//
// The multiplexer is implemented as a 2-to-1 multiplexer with
// 4 inputs and 2 outputs.
//
// The multiplexer is implemented as a 2-to-1 multiplexer with
// 4 inputs and 2 outputs.
endmodule
