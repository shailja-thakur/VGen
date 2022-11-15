// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
// --------------------------------------------
wire andb;

and( andb, a, b);
assign out = andb;

endmodule
