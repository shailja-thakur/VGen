// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign in( out );

// Design a module that copies the input to the output
module wire_copy( input in, output out );
// assign out to in
wire_copy in( out );

// Design a module that performs the logical NOT operation on the input
module logic_not( input in, output out );
// assign out to !in
logic_not in( out );

// Design a module that performs the logical AND operation on the input and the output
module logic_and( input a, input b, output out );
// assign out to a and b
logic_and a( b );
logic_and b( a );

// Design a module that performs the logical OR operation on the input and the output
module logic_or( input a, input b, output out );
// assign out to a or b
logic_or a( b );
endmodule
