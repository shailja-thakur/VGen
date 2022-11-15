// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
out <= and( a, b );


module and_gate(
    input a, 
    output out
);

    // assign the AND of a and 0 to out
out <= and( a, 0 );


module and_gate(
    output out
);

    // assign the AND of 0 and 0 to out
out <= and( 0, 0 );

// ----------------------------------------------------------------------------------------


module and_gate(
    input a, 
    input b, 
    output out
);

    // assign the AND of a and b to out
out <= and( a, b );


module and_gate(
    input a, 
    output out
);

    // assign the AND of a and 0 to out
out <= and( a, 0 );


module and_gate(
    output out
);

    // assign the AND of 0 and 0 to out
endmodule
