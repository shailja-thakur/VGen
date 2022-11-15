// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
wire and_gate_in1, and_gate_in2;

and and1(and_gate_in1, a, b);
or or2(out, and_gate_in2);

and and2(and_gate_in1, and_gate_in2);
or or3(out, and_gate_in2);

endmodule
