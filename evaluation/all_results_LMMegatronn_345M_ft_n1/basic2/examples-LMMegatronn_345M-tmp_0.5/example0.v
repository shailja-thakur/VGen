// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
	wire gated = a & b;
	
	or o1(gated, a, b);
	
	// o2(gated, a, b);
	and o2(gated, a, b);

endmodule
