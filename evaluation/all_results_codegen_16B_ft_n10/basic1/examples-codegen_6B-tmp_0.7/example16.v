// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign2( input in, output out );

// An assignment is a module with each port defined as a wire.
// The assign module will have a default input wire named "0"
// and a default output wire named "0"
module wire_assign( input in, output out ) {
    assign( out, in );
}

// assign out to in
// module wire_assign2( input in, output out ) {
//     assign( out, in );
// }

// An assignment module can accept multiple inputs, and multiple outputs.
// The module will have multiple inputs and multiple outputs.
// The inputs and the outputs can be either wires or ports.
//
// The module will have a default input wire named "0"
// and a default output wire named "0"
module wire_assign( input1 in1, output1 out1endmodule
