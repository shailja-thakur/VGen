// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    extern and_gate and_out;

    and_gate and_gate( 
    input a, 
    input b, 
    output out ) 
    { 
        // call the global and_out and pass a and b
        out <= and_out.out <== a <== b;
    } 
    
    endmodule
