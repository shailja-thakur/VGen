// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assign( out, and_gate( a, b ) );

    // define the AND gate
    and_gate {
        input a;
        input b;
        output out;
    }

endmodule
