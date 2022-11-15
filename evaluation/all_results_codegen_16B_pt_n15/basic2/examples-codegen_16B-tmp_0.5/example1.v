// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assign( out, and_gate(a, b) );

    // define the ports of the and gate
    input in[2];
    output out;

endmodule
