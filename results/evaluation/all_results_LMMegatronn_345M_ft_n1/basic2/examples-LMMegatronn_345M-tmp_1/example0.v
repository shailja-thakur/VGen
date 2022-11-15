// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

wire a0, a1, a2;

not n1(a0, a1);
not n2(a1, a0);
and a3(a0, a0, b);

or o1(out, a0, a1);

endmodule
