// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assign out = a & b;

    // design the AND gate
    and_gate( a, b, out );

    // design the AND gate
    and_gate( a, b, out );
}
endmodule
