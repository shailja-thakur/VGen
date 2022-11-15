// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
                
output output; 

    void output::connect_and(
        input out_a, 
        input out_b
        )
    {
        output_gate = out_a & out_b; 
    }

// current design confuses by previous modular Java code
// ignores all inputs and all output -- therefore JML produces 
// undefined behavior
               
a & b | and_gate(a, b) | = output; 

endmodule
