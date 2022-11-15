// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

// internal signals
wire w1;


// implementation of the and gate
and and1(w1, a, b);
or or1(out, w1, a);

endmodule
