// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

void and_gate::eval(){
    out = a & b;
}

// Design a module that implements an OR gate

module or_gate( 
    input a, 
    input b, 
    output out );

    // assing the OR of a and b to out

void or_gate::eval(){
    out = a | b;
}
endmodule
