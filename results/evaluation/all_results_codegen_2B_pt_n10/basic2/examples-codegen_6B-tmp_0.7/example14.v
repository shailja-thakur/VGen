// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out and return out

output
and_gate( a, b )
    {
        if( a && b )
            out = 1;
        else
            out = 0;
    }



// Design a module that implements an OR gate

module or_gate(
    input a,
    input b,
    output out );

// assign the OR of a and b to out and return out

output
or_gate( a, b )
    {
        if( a || b )
            out = 1;
        else
            out = 0;
    }


// Design a module that implements a NOT gate

module not_gate(
    input a,
    output out );

// assign the NOT of a to out and return out

output
not_gate( a )
    {
        if( !a )
            out = 1endmodule
