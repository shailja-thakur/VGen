// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    out <= ((a && b) ? 1 : 0);

module and_gate_pre(
    input a,
    output out );

// note that this assign is preprocessing logic NOT processing logic
// i.e. logic that appears in the pre program to gate
out <= a && b;
endmodule
