// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out.

// port list of the and_gate module
	input a;
	input b;
	output out;
	
// list the output of the and gate
	assign out = a & b;


endmodule
