// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    wire and_a;
    wire and_b;
    wire and_gate;

    and_gate( 
        a, b, and_gate
    ) {
        and_gate = and_a & and_b;
    }

Endmodule
endmodule
