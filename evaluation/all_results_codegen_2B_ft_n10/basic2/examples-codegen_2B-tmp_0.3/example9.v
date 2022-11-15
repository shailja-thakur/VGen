// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
 wire a_and_b;
 wire a_and_b_not;
 wire a_not_b;

 not n1(a_not_b,a);
 not n2(a_and_b,a_not_b,b);
 not n3(a_and_b_not,a_and_b,b);
 not n4(out,a_and_b_not,b);

endmodule
