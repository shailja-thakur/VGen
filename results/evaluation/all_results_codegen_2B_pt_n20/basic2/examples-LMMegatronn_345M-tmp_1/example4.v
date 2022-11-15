// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

wire a0, a1, a2;
or or0 (out, a0, a1);
 OR2 (a0, a2, a0);

endmodule
