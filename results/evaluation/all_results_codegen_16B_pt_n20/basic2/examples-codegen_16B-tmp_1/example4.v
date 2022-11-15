// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assign out( 0 ) = ( a | b );
    // Assign the negation of a or b to out
    assign out( 1 ) = ( !a | !b );
endmodule
