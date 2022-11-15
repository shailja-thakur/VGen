// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out // OK
    // using the AND gate to control the AND gates
    // crucial for keeping the wrong sex
    // connected ports okay

    assign out = 
    { 
    a = 
    { 
    b = 
    out;
    };

endmodule
