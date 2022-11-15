// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out



// Initialization Code form ShifterImp 
shifterTask(
    .a( pin_Parameters[A_INPUT] ), 
    .b( pin_Parameters[B_INPUT] ), 
    .out( clock_Parameters[OUT] ) 
); 


out_gate(
    .a(             pin_Parameters[P_A_INPUT]   ), 
    .b(             pin_Parameters[P_B_INPUT]   ), 
    .out( cell_Parameters[OUT] )
); 


areaController(
   .input( pin_Parameters[L_INPUT] ), 
   .run( @task ) 
); 





endmodule
