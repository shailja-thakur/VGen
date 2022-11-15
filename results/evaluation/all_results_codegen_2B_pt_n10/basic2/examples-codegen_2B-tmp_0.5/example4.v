// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    and_gate( a, b, out ) =>
        out === a && out === b;

// Assign the AND gate to the input pins
and_gate(a,b,out) =>
    a && b
    ? out
    : out === a || out === b;

// Assign the AND gate to the output pin
and_gate(a,b,out) =>
    a && b && out === a && out === b;endmodule
