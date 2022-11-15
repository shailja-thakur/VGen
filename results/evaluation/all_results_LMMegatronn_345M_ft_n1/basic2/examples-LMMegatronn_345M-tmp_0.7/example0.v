// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

xor xo1(out,a,b);
and a1(a,a,b);

endmodule
