// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assign( out, and( a, b ) );
    
    // declare a variable that is an AND gate
    and_gate and_gate_inst;
    
    // connect the two inputs to the AND gate
    and_gate_inst.in( a );
    and_gate_inst.in( b );
    
    // connect the output of the AND gate to the output
    and_gate_inst.out( out );

endmodule
