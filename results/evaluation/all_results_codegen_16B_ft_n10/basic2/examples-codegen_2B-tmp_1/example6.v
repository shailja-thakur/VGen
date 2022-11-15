// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
wire o1, o2;

not( 
	o1, 
	a, 
	 );

not( 
	o2, 
	b, 
	);

nand( 
	out, 
	o1, 
	o2, 
	 );




endmodule
