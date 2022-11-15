// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

    always @ (a, b)
    out <= a && b;

endmodule
