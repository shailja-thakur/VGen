// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

    function and( 
        a, 
        b, 
        c      snap )
    {
        out = ( a < 1 || b < 1 ) ? 1 : 0;
    }
endmodule
