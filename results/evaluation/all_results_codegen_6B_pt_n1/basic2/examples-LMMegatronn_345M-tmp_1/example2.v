// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out 

wire a0, b0;

and and_gateA( 
       a ^ b ^ a0 ,
       a & b ) ;
 
and and_gateB( 
       b ^ a1 ,
       b & a2 ,
       b & b0 );

and and_gateGT( 
       b0, a0, b0, b1
);

or or_gate(out , a0, a1);

endmodule
