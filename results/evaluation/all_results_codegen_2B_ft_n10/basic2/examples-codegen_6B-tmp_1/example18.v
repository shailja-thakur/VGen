// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    // and does nothing if a == b
    alu a_xor_b = ( a xor b ) and ~( a xor b );
    // Wants the and of the last previous and this with the value of an
    // */

    // This is the output of the and gate
    assign out = a_xor_b;

  endmodule
