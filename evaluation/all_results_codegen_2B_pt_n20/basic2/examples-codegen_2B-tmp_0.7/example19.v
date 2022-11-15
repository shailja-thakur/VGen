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
        // Assign output to a and b
        out = a && b;

        // Assign a and b to a and b
    }


// Assign the AND of a and b to a and b
extern and_gate( 
    input a, 
    input b, 
    output out );
endmodule
