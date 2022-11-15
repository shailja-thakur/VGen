// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assign( out, and_gate( a, b ) );


//------------------------------------------------------------------------------
// Implement the AND gate
//------------------------------------------------------------------------------
module and_gate( 
    input a, 
    input b, 
    output out )
{
    // logic for the AND gate
    if ( a == 1 && b == 1 ) {
        out = 1;
    } else {
        out = 0;
    }
}
endmodule
