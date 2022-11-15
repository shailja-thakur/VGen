// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
that assing the AND of a and b to out.
and_gate( a, b, out );

module and_gate_aux(
    input a, 
    input b, 
    output out );

	// do nothing.
and_gate_aux( a, b, out );

function out equals and_gate<write>( a, b ){
     out.write( a && b );
}

function out equals and_gate_aux<write>( a, b ){
     out.write( a && b );   
}

// design a module

// a module that concatenate the contents of two inputs
// and
// prints the results to a third output

module concat( input c, 
            input d,
            output out     );

// add two inputs, and
// add the two to the third output

endmodule
