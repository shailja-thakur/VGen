// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
 wire a_and_b, a_and_b_not;
 not n1(a_and_b_not, a);
 not n2(a, b);
 and_gate a1(a_and_b, a_and_b_not, b);
 not n3(out, a_and_b);

endmodule
