// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assignment andgate(
        output_var out,
        input a,
        input_wire b
    );    
endmodule
