// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out.
    
main
    (
    input [2] in, 
    output [1] out
    ) 
    {
    and_gate( in[0], in[1], out[0] );
    }

endmodule
