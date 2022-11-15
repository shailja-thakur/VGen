// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

and A1(a, b, a & b);
and A2(a, b, a & b);
or A3(out, a, b, out);

endmodule
