// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
function assign( in, out ) {
	out = in;
}
// The module above is an example of a module that assigns the output to the
// input. The above module is a module that does not have any input or output
// ports. The module below is an example of a module that has two inputs and
// two outputs. Each module has a name, and a set of ports. The module below
// is an example of a module that has a single port.
module wire_example( input in, output out );
// module example has an input and output port.
function example( in, out ) {
	out = in;
}
// A module is a collection of ports that are connected to each other. The
// module below is an example of a module that has two ports. Each port has a
// name, a type, and a direction. The ports below are named in and out, andendmodule
