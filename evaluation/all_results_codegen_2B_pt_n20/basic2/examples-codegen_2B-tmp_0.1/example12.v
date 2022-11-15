// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assign out = a & b;

// Design a module that implements an OR gate

module or_gate( 
    input a, 
    input b, 
    output out );

    // assign the OR of a and b to out
    assign out = a | b;

// Design a module that implements a NAND gate

module nand_gate( 
    input a, 
    input b, 
    output out );

    // assign the NAND of a and b to out
    assign out = ~( a & b );

// Design a module that implements a NOR gate

module nor_gate( 
    input a, 
    input b, 
    output out );

    // assign the NOR of a and b to out
    assign out = ~( a | b );

// Design a module that implements aendmodule
