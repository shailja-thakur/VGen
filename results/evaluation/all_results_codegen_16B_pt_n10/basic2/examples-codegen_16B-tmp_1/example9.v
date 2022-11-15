// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assign( out, and_gate, a, b );

    // The equation of the AND gate
    equation( and_gate, and_gate.out_value( ) == true ); 
    
endmodule
