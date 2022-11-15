// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

output out;

// The following is the implementation of the AND gate

void and_gate( 
    input a, 
    input b, 
    output out )
{
    if( a == 1 && b == 1 )
    {
        out = 1;
    }
    else
    {
        out = 0;
    }
}
endmodule
