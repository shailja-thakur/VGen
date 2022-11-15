// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
	wire not_a, not_b;
	
	not (not_a, a);
	not (not_b, b);
	
and (anded_out, a, not_b);
or (out, not_a, not_b);

endmodule
