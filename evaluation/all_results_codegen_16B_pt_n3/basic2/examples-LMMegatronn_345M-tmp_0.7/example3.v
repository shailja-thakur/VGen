// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

wire c0, c1, c2, c3;

and and_gate(a, b, c0);
and and_gate(c0, a, b);
or or_gate(out, c0, c1);

endmodule
