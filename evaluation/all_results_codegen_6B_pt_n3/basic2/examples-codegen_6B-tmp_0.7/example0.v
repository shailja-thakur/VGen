// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out, and then
    // a and b are both undefined.

out <= a & b;

endmodule
