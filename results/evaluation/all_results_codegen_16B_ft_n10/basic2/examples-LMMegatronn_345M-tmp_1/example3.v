// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
	wire g;
	not (g, a);
	and (out, a, b, g);

endmodule
