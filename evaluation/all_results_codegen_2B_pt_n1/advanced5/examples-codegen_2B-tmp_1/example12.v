// This is an FSM.
module abro(
input clk, reset,  
input a,  b,
output z );
parameter IDLE = 0,
S1 = 1,
S2 = 2,
S3 = 3;
reg [1:0] cur_state,next_state;
//This is an FSM with the output z high when either of the input signals a or b are high irrsepective of their order.
//This FSM tests if both state machines try to assert a transition and report successes and failures.
nld_test( abro_Fsm )
     .fsm 3
     (
     input 
        a,  b,
        z   );
     ;
initial begin
    next_state <= 2;
    cur_state <= 2;
end;
initial begin
    next_state <= 9;
end;
   
bind cur_state, next_state;
//module Fsm_2 = interconnect lt0 o0 o1;
nld_test( Fsm_2 )
     .test ::ZgS1 = ZL_0;
     .test ::ZgS2 = ZL_0;
     .test ::ZgS3 = ZL_0;
    
   // Current Time and Statees 1.1
    always @(endmodule
