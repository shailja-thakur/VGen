// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When a=0, assign 1 to out. 
// When a=1, assign b to out. 
// When b=0, assign 1 to out. 
// When b=1, assign a to out.
// ---|>
// design of a multiplexer based on the FPGA at 
// https://github.com/USI-MULT/fpga_design_patterns

`

// Test of a multiplexer.
var mux = NewMux()

// This is a sequentially operating channel.
var c1 = NewChannel(make([]byte, 4), make([]byte, 4))
var c2 = NewChannel(make([]byte, 4), make([]byte, 4))

// Set the input values.
mux.SetInputs<4, 4>([]byte{0x01, 0x02endmodule
