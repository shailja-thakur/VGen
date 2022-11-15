// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    
out = and( a, b );

and_gate(
    a, b, out );

// The module and_gate is implemented as a function.

function and_gate( 
    input a, 
    input b, 
    output out ) {
    out = and( a, b );
}

// Design a module that implements an OR gate

module or_gate( 
    input a, 
    input b, 
    output out );

    // assing the OR of a and b to out
    
out = or( a, b );

or_gate(
    a, b, out );

// The module or_gate is implemented as a function.

function or_gate( 
    input a, 
    input b, 
    output out ) {
    out = or( a, bendmodule
