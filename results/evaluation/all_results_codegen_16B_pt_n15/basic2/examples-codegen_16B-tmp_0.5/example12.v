// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assign( out, and_gate.a  )
    assign( and_gate.b, a )
    assign( and_gate.out, and_gate.a && and_gate.b )

endmodule
