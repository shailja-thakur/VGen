// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assign out = a && b;

// Design a module that implements an OR gate

    module or_gate( 
        input a, 
        input b, 
        output out );

    // assign the OR of a and b to out
    assign out = a || b;

// Design a module that implements a nand gate

    module nand_gate( 
        input a, 
        input b, 
        output out );

    // assign the AND of a and b to out
    assign out = !( a && b );

// Design a module that implements a nand gate

    module nand_gate( 
        input a, 
        input b, 
        output out );

    // assign the AND of a and b to out
    assign out = !( a || b );

// Design a module that implementsendmodule
