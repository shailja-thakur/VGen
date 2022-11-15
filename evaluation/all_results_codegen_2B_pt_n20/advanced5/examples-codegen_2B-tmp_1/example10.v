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
reg [1:0] mode_state;
// The output z is low (if its value is 0) when mode_assigned is 1 (SB)
reg [63:0] curr_offset;
// The current offset of the internal state track is cur_offsetration
parameter n_of_states = 2 [1:0];
clk_event clk_event =
{ state_idle
{
out => GPIO[31:28],
in => clk
}
};
pretype timer3_A = trigger_input (!cont_input input a and 
cont_input input b);
pretype delay_clk_1 = timer3_C;
clk_signal reset_clk_event =
{ state_idle
{
out => reset
}
};
clk_event clk_events[n_of_states];
mendmodule
