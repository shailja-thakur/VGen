// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assign( out, and_gate.out );

    // assign a to out
    assign( and_gate.a, a );

    // assign b to out
    assign( and_gate.b, b );

    // define and_gate's behavior
    and_gate.out = a && b;

endmodule
