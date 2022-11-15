// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
function and( input in_1, input in_2, output my_return );

function and_gate( input a, input b, output out )
{
    my_return = a & b;
}


and_gate(1, 0, out is 0)
and_gate(0, 1, out is 1)
endmodule
