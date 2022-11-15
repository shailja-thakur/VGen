// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

module test( 
    input a, 
    input b, 
    output out);
OUT:
    always out <= !(a and b); 
endmodule
