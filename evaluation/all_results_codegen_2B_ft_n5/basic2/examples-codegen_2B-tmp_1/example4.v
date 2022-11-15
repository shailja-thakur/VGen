// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out, if either a or b is high
 /// thus out = a and b

wire ab_a_and_b;

and( ab_a_and_b, a, b );

/// now define the output as a high-z signal.
wire out_z;
unary( ~ab_a_and_b, out_z );

/// the gate is drawn on the give input ports 
 /// let the semais out of a loop 

endmodule
