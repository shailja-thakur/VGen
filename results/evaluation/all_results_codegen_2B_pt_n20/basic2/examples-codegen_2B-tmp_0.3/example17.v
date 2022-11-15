// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    // this is the only function that is called
    // when the AND gate is instantiated
    void and_gate_instantiate( 
        and_gate &and_gate_instantiation, 
        input a, 
        input b, 
        output out );

// Design a module that implements an OR gate
module or_gate( 
    input a, 
    input b, 
    output out );

    // assign the OR of a and b to out
    // this is the only function that is called
    // when the OR gate is instantiated
    void or_gate_instantiate( 
        or_gate &or_gate_instantiation, 
        input a, 
        input b, 
        output out );

// Design a module that implements a NAND gate
module nand_gate( 
    inputendmodule
