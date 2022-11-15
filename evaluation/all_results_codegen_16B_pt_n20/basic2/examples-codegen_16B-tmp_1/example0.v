// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assign and_gate.A = a; 
    assign and_gate.B = b; 
    assign and_gate.out = and_gate.A & and_gate.B;

endmodule
