// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

and_gate( 
    input a, 
    input b, 
    output out ) : 
    and_gate_input( a ), 
    and_gate_input( b ), 
    and_gate_output( out ) {
}

// Design a module that implements an OR gate

module or_gate( 
    input a, 
    input b, 
    output out );

    // assign the OR of a and b to out

or_gate( 
    input a, 
    input b, 
    output out ) : 
    or_gate_input( a ), 
    or_gate_input( b ), 
    or_gate_output( out ) {
}

// Design a module that implements a NAND gate

module nand_gate( 
    input a, 
    inputendmodule
