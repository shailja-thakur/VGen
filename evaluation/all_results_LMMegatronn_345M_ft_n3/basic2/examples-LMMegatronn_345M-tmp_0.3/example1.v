// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
	wire gated;
	not gated = a & b;
	
	and and_gate(gated, a, b);
	or or_gate(gated, a, b);

endmodule
