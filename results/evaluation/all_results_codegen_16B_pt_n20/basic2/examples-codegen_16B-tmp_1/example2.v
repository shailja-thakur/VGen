// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    //       
    assign a_and_b_out = AND( a, b);

    // Design a module that buffer a signal 
    // and output it when clock becomes one

module buffer_and_gate(
    input clock,               // Nonzero to start outputting to out 
    input a_in,                // Input for module
    output out_buffer,         // Buffer output
    input buffer_enabled      // 1 to start outputting
    );
    // Ignore clock, {a_in}, and out_buffer 

    
    assign out_buffer = (buffer_enabled == 1) ? a_in : 0;
) // the last line assumes the default value of buffer_enabled == 0

   // Now connect these modules in the correct order where buffer_and_gate
   // gets clocked before buffer_model before and_gate

module top (
endmodule
