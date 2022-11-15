// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assign  out( and_(a, b) );
    

module top( 
    input [2:0] i, 
    output o
    );

    // Generate the AND logic
    and_gate and_node  (a, b, o );  // Connect the and_gate's outputs to top.o

    // Define what to do when the user requests an input to top
    input [3] a, b;
    input  enable;
    always @(posedge enable ) {    
        if ( enable ) {
            a = !i[0];
            b = !i[1];
        } else {
            a = 0;
            b = 0;
        }
    }

    // Assipp requires the design file 
    // define clock & reset interfaces and instantiate them
    // reset and clock are fed to theendmodule
