// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    always @(posedge clk)
    out <= a & b;

// The module is instantiated in the behavioral simulation

endmodule
