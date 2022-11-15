// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out 
// create internal wiring connections between the gate and its inputs
assign out = a & b;//concatenation

endmodule
