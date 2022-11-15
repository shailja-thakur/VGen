// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

tuple<input, input, output> and( a, b, out );

// Design a module that implements an OR gate

module or_gate( 
    input a, 
    input b, 
    output out );

    // assing the OR of a and b to out

tuple<input, input, output> or( a, b, out );

// Design a module that implements a NOT gate

module not( input in, output out );

    // assing the NOT of in to out

tuple<input, output> not( in, out );

// Design a module that implements an XOR gate

module xor_gate( 
    input a, 
    input b, 
    output out );

    // assing the XOR of a and b to out

tuple<input, input, output> xorendmodule
