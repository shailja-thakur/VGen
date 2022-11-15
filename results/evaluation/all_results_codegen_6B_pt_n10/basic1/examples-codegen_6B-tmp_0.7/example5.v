// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign_to( input in, output out );

module wire_assign_and_load( input in, output out );

/*
 * The built-in wire_assign_and_load functions have a similar signature.
 * The difference is that they can load the value of the output as well.
 */

// load the value of the output as well as the input
module wire_assign_and_load2( input in, output out );

// load the value of the output as well as the input
module wire_assign_and_load_to( input in, output out );

// load the value of the output as well as the input
module wire_assign_and_load_from( input in, output out );

/*
 * The built-in wire_assign_and_load_from functions have a similar signature.
 * Theendmodule
