// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assignment make_assign( inout and, in out_and )
        for ( var i in and )
            and_gate( i, assign( out_and, and( row( and, i ), row( and, i ) ), i ) );

endmodule
