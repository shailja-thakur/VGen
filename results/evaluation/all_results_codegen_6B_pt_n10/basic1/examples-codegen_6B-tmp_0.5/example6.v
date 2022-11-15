// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
out = in;
// end of module

// Design a module that assigns the output to the input using a function
// wire_assign( input in, output out )
// assign out to in using wire_assign
module wire_assign_function( input in, output out ) {
    out = wire_assign( in, out );
}
// end of module

// Design a module that adds the input to the output
module add( input in, output out ) {
    out = in + in;
}
// end of module

// Design a module that adds the input to the output using a function
// add( input in, output out )
// add out to in using add
module add_function( input in, output out ) {
    out = add( in, out );
}
// end of module

// Design a module that adds the input to theendmodule
