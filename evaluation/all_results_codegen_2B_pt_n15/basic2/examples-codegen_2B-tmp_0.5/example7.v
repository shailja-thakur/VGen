// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    and_gate( a, b, out ) = 
       a && b && !out;

// and_gate is a function
and_gate( a, b, out ) {
    if ( a == true ) 
        out = out && b;
    else
        out = out && a;
}

endmodule
