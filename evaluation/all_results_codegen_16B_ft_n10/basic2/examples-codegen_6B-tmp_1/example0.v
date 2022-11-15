// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
and( x1, a, b );


//non-assign statement 
assign out = x1;
 


 //internal representation of output
 assignout m1(out, out0); 

endmodule
