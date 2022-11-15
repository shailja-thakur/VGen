// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
 wire and1, and2;
 always @(a, b, and1)
 and @(a, b, and2);
 
 assign out = and1 & and2;

endmodule
