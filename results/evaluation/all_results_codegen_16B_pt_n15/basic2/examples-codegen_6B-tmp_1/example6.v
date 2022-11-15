// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
// that executeute the code..a.andb_out
 logic_and(and_port, a, b);
 assign out=and_port;

endmodule
