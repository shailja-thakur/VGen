// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
wire a_out;
wire b_out;

and and_gate(a_out, b);
and and_gate_and_gate(b_out, a);
or or_gate(out, a_out);

endmodule
