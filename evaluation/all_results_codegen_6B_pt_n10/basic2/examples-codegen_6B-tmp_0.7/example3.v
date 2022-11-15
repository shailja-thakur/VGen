// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

output and_gate( 
    input a, 
    input b, 
    output out )
{
    out = a & b;
}

// A module that implements an OR gate

module or_gate( 
    input a, 
    input b, 
    output out );

    // assing the OR of a and b to out

output or_gate( 
    input a, 
    input b, 
    output out )
{
    out = a | b;
}

// A module that implements an XOR gate

module xor_gate( 
    input a, 
    input b, 
    output out );

    // assing the XOR of a and b to out

output xor_gate( 
    input a, 
    input b, 
    output out )
endmodule
