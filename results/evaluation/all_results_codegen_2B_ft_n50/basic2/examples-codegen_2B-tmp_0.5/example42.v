// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
 wire a_and_b;
 wire and_out;
 
 andgate a1(a,b,a_and_b);
 andgate a2(a,b,out);
 orgate a3(a_and_b,out,and_out);
 
endmodule
