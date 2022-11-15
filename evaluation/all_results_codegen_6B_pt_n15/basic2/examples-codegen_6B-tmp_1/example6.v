// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

    output and_gate( 
        input a, 
        input b, 
        output out ) { 
        out = a & b; 
    }

example and_gate = and(10, 11);

/// [[File:ORgate.png]]
/// enfile/bin/example 
endmodule
