// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out 
 assign out = a & b;

 endmodule
// Design a module that implements an XNOR gate

module xnor_gate( 
 inter a, 
 inter b, 
 inter c, 
 inter d, 
 invalue e, 
 avalue f, 
 nvalue g );

	input a,b;
	output c,d,e,f,g;
	
	and and1( b, a, c); 
	and and2( d, g, e); 
	or or1(c,b,d); 
	nor norn1(e,a,b); 
	nand nand1(f,d,c);
	nornornand nornornand1(g,e,f); 
	
	endmodule
