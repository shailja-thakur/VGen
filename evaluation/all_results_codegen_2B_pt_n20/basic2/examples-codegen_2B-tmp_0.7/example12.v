// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

and_gate( 
    input a, 
    input b, 
    output out )
{

    #local a, b, temp;

    // initialize temp to the OR of a and b
    temp = a | b;

    // loop until temp > 0 and out is 0
    while (temp > 0) 
    {
        if (out > 0)
        {
            temp = temp & out;
        }
        else
        {
            temp = temp | out;
        }
    }

    return temp;
}
endmodule
