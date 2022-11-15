// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign in( out );

// Design a module that performs an AND operation on two inputs
module and( input in1, input in2, output out );
// assign out to in1 and in2
and( in1, in2, out );

// Design a module that performs an OR operation on two inputs
module or( input in1, input in2, output out );
// assign out to in1 and in2
or( in1, in2, out );

// Design a module that performs an XOR operation on two inputs
module xor( input in1, input in2, output out );
// assign out to in1 and in2
xor( in1, in2, out );

// Design a module that performs a NOT operation on an input
module not( input in, output out );
// assign out to in
not( in, out );

endmodule
