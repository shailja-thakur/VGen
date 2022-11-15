// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
 always @ (a or b)
 if(a & b)
 out = 1'b1;
 else
 out = 1'b0;

endmodule
