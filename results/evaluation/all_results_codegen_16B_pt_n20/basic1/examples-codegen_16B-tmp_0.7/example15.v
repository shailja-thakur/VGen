// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign.assign( in, out );

// The design should now be instantiated
// using the module wire_assign. 
// Note that it is the first definition, 
// not the first instantiation.
// wire_assign( i, o );

// The design should now be instantiated.
// Note that i is assigned as the first input. 
// If i is not assigned to an output, then it 
// will be assigned to the default input.
// wire_assign( i, o );

// The design should now be instantiated.
// Note that the default input is used as the first input. 
// If i is not assigned to an output, then it 
// will be assigned to the default input.
// wire_assign( i, o );

// The design should now be instantiated.
// Note that the defaultendmodule
