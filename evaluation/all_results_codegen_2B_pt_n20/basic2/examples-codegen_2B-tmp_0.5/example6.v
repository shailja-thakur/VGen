// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assign out = a & b;

    // design the AND gate with a and b input pins
    input inA, inB, out;
    and_gate( inA, inB, out );

    // design the OR gate with a and b input pins
    input inA2, inB2, out2;
    or_gate( inA2, inB2, out2 );
endmodule
