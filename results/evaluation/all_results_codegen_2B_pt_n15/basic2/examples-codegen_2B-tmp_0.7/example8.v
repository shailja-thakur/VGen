// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    void
    and_gate::
    and( 
        input a, 
        input b, 
        output out)
    {
        *out = a && b;
    }



// Design a module that implements a NOR gate

module nor_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    void
    nor_gate::
    nor( 
        input a, 
        input b, 
        output out)
    {
        *out = a && !b;
    }


// Design a module that implements a NAND gate

module nand_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    void
    nendmodule
