// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign.assign( in, out );
// assign the output of wire_assign to the input of the module
wire_assign.connect( wire_assign.output, module.input );
// connect the output of the module to the input of the wire_assign
module.connect( module.output, wire_assign.input );

// Design a module that takes the input and adds it to the
// output, then outputs the result
module add_module( input in, output out );
// add in to out
add_module.assign( in, out );
// connect the input of the add_module to the input of the module
add_module.connect( add_module.input, module.input );
// connect the output of the module to the output of the add_module
module.connect( module.output, add_module.output );

//endmodule
