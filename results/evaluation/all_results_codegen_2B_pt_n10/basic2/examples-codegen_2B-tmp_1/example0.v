// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assIGN input >= = a & b;

    // place the outcome of the AND into out
    assIGN out, < assignment(out,a,b);

endmodule
