// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    //
    // NOTE: You do not need to assign the output to the AND gate
    //
    // NOTE: The output of the AND gate is the AND of a and b
    //
    // NOTE: The output of the AND gate will be a single bit
    //
    out <= a & b;

endmodule
