// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    initial 
    out = a && b;

and_gate( 
    input a, 
    input b, 
    output out ) :
    and_in( a ),
    and_in2( b )
{
    out( a );
}
endmodule
