// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assign( out, and( a, b ) );


// Design a module that implements an OR gate

module or_gate( 
    input a, 
    input b, 
    output out );

    // assing the OR of a and b to out
    assign( out, or( a, b ) );


// Design a module that implements an XOR gate

module xor_gate( 
    input a, 
    input b, 
    output out );

    // assing the XOR of a and b to out
    assign( out, xor( a, b ) );


// Design a module that implements an NOT gate

module not_gate( 
    input a, 
    output out );

    // assing the NOT of a to out
    assign( out, not( a ) );


//endmodule
