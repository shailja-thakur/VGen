// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
// port declarations
	input a;
	input b;
	output out;

//the basic structure is : module and_gate(a, b, out);
//the inputs are : a and b and the output is out

//initializing the module

assign out = a & b;

endmodule
