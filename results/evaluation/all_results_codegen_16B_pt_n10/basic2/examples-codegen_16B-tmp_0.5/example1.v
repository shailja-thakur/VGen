// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assign( out, and( a, b ) );

    // implement the AND gate
    always_ff( and_gate ) {
        if (a == 0 && b == 0) {
            out = 0;
        } else if (a == 0 && b == 1) {
            out = 1;
        } else if (a == 1 && b == 0) {
            out = 1;
        } else {
            out = 0;
        }
    }
endmodule
