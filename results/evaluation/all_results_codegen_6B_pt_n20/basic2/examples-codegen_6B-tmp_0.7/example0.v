// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
out <= and(a, b);

module and_gate_alt( 
    input a, 
    input b, 
    output out );

    // assign the AND of a and b to out
    // but this is a bad idea
out <= and(a, b);

// ----------------------------------------------------------------------------
endmodule
