// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

and_gate( 
    input a, 
    input b, 
    output out )
    {
    out = a && b;
    }

    // design a module that implements an OR gate

module or_gate( 
    input a, 
    input b, 
    output out );

    // assign the OR of a and b to out

or_gate( 
    input a, 
    input b, 
    output out )
    {
    out = a || b;
    }

    // design a module that implements an XOR gate

module xor_gate( 
    input a, 
    input b, 
    output out );

    // assign the XOR of a and b to out

xor_gate( 
    input a, 
    input b, 
    output out )endmodule
