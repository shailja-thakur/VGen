// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    output logic and_gate( 
        input a, 
        input b, 
        output out ) {
        out = and( a, b );
    }

// The AND gate has two output pins

module or_gate( 
    input a, 
    input b, 
    output out1, 
    output out2 );

// We can connect the OR gate to one of the AND gates

module and_gate_or( 
    input a, 
    input b, 
    output out1, 
    output out2 );

// OR gate connects the output of an AND gate to a single output pin

module and_gate_or( 
    input a, 
    input b, 
    output out );

// We can connect the OR gate to one of the AND gates

module and_gate_orendmodule
