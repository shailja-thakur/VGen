// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

function logic_and( a, b )

    return a & b;

end and_gate;

end design;

// Design a module that implements an OR gate

module or_gate( 
    input a, 
    input b, 
    output out );

    // assing the OR of a and b to out

function logic_or( a, b )

    return a | b;

end or_gate;

end design;

// Design a module that implements a NOT gate

module not_gate( 
    input a, 
    output out );

    // assing the NOT of a to out

function logic_not( a )

    return !a;

end not_gate;

end design;

// Design a module that implements a XOR gate

module xor_gate( 
    endmodule
