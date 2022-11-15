// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign assign( input in, output out );

// the output is the input value
function wire_assign_functor( input in, output out ) 
{
    out = in;
}
// assign out to in
function assign_functor( input in, output out ) 
{
    out = in;
}

// Design a module that calculates the square of a number
module square( input in, output out );
// calculate square
square square( input in, output out );

// Design a module that calculates the square of a number
module square_functor( input in, output out );
// calculate square
square_functor square_functor( input in, output out );

// module wire_assign_value( input in, output out, int value );
module wire_assign_value( input in, output out, int value );
endmodule
