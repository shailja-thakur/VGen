// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
out = in;
// Wire the modules together
wire_assign( in, out );
// Execute the module
out = out;
// Conclusion
// ------------------

// Remember that the constructors of the modules are called before the
// initialization in the order they are listed here.

// The module: wire_assign
// ------------------------------
//
// A module is an object that consists of a set of ports and a set of
// methods. The ports are connected to each other, while the methods
// are used to perform the processing of the ports. This module can be
// treated as a single-port module where the source port is the input
// port and the output port is the output port.
//
// This module is the assignment module. It assigns the output to the
// input.
//
// It has one port: input
//
// Output: output
//
// Methodsendmodule
