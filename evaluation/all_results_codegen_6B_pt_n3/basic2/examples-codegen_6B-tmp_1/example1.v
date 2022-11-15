// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out if the 
    // inputs are both set 
    // OUT -> out if a and b are both set 
    // IN -> FORBIDDEN if both inputs are not set 
arbitrary_signal and_gate_sig( 
    input a, 
    input b, 
    output out );

    // implement the gate so that
    // the IN bit signals the forbidden result
    out = a and b;

and_gate( IN, IN, IN );
and_gate( IN, a, IN );
and_gate( a, b, IN );
and_gate( a, a, IN );
and_gate( a, b, b );
and_gate( b, a, a );
and_gate( b, b, b );

return 0;
}
endmodule
