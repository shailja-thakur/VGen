// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

assign out = a & b;


// end of the file

//======================================================================
// EOF and_gate.v
//======================================================================

//======================================================================
//
//======================================================================
//======================================================================

module not_gate( 

input a,
output out

);

assign out = ~a;

endmodule
