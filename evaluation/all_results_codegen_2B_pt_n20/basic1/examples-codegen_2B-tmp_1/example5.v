// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in

// Design a module that prints message to console
module display( input in, output out );
// write message to the console

// Design a wire
module wire( input in, output out );
// generate a wire within the module

// Design rules to enforce

// Interface to Wiring
module wiring( input in, output out );
// generates 16 pins and wires them to 5 external IO pins currently (x, Y, A, B, G).
// This component just broadcasts the incoming input and passes the input object through.

// Interface to IO
// the IO module encodes additional information about the pins such as whether a pin is Pull14 on a Hoplite.
// this component decodes the wire inputs and generates a neuron for each pin on the wire.

module io( input [4:0] in_a, input [4:0] in_b, input [4:0] in_endmodule
