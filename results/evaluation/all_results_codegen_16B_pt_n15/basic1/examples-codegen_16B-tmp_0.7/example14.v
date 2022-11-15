// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign( in, out );
// Design a module that implements a register with 2 bits
module reg( input clk, output out );
// implement register logic
reg( clk, out );
// Design a module that implements a counter that takes in two clock and
// two reset pins and outputs a coutn value on a single output pin
module counter( input [0:3] clk, input [0:3] reset, output [0:1] out );
// implement the counter logic
counter( clk, reset, out );
// Design a module that implements a flip-flop with two inputs and two
// outputs
module flipflop( input [0:1] clk, input [0:1] d, output [0:1] out );
// implement the flip-flop logic
flipflop( clk, d, out );
// Design a module thatendmodule
