// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    output logic and( a, b );

    // Implement NOT

    // construct1 NOT logic NOT a
    logic inv_if_false( a );
    
    // construct logic that runs if and_out = false
    logic and_not( and_out, NOT logic and( and_out, NOT a ));
    
    // construct logic that runs if AND has output
    logic neg_if_true( logic and( NOT logic and( and_out, a ), a ));

    // implement I/O and terminal symbols
    input in1, in2, out;
    output logic gate_out;

    gate_out . logic_and( in1, in2, out )
    gate_out . logic_or( in1, in2, out )
    gate_out . logic_xor( in1, in2, out )
    gate_endmodule
