// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
Export( "out ::= in" );

//
external wire_assign : input, output; // A function
endmodule
