// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    // out is the output of the AND gate

and_gate( 
    input a, 
    input b, 
    output out )
    {
    out = a & b;
    }
endmodule
