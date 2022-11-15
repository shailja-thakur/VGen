// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assign( out, and( a, b ) );
    
    // output the AND of a and b
    output logic[1:0] out_logic;
    assign( out_logic, and( a, b ) );

endmodule
