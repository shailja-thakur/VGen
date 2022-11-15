// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assign out == a & b;



module m1(
    input i,
    output o
    );

    module out1 = and(i, i+1);

    module out2 = and(i+1, b);

    output start = and(i+1, b+i);



 

endmodule
