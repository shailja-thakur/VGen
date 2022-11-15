// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

function and_gate( 
    input a, 
    input b, 
    output out )
{
    // Declare a variable to hold the result of the AND
    var result = 0;

    // If a is 1 and b is 1, set the result to 1
    if ( a == 1 && b == 1 ) {
        out = 1;
    }
    // Else if a is 0 and b is 0, set the result to 0
    else if ( a == 0 && b == 0 ) {
        out = 0;
    }
    // Else, set the result to the AND of a and b
    else {
        out = a & b;
    }
}
endmodule
