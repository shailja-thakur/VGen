// This is an FSM
module abro(
input clk,
input reset,
input a,
input b,
output z );
parameter IDLE = 0,
SA = 1,
SB = 2,
SAB = 3;
reg [1:0] cur_state,next_state;
// The output z is high when 1 is received for signals a and b in any order.
// If cur_state is IDLE and a and b are both high, state changes to SAB
// If cur_state is IDLE, and a is high, state changes to SA
// If cur_state is IDLE, and b is high, state changes to SB
// If cur_state is SA, and b is high, state changes to SAB
// If cur_state is SB, and a is high, state changes to SAB
// If cur_state is SAB, state changes to IDLE
// z is assigned one when cur_state is SAB
parameter model_inst = 1 (.0);
output state_fn(state_select);
(*state_fn)();
(*state_fn)(a_logic,b_logic,&cur_state,&next_state);
always @* state_select
    switch (cur_state)
    {
        case IDLE: (a_fsm,b_fsm  
                       process w = a_fsm' ( w_fsm' (a_fsm,b_fsm) w_fsm), 
                       y_fsm' ( y_fsm'' (a_fsm,b_fsm) y_fsm), 
                       z_fsm' ( z_fsm'' (a_fsm,b_fsm) z_fsm) );
                 if (w.cntr) 
                   next_state = SABendmodule
