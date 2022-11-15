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
wire [1:0] ac_state,ad_state,bc_state,bd_state;
//initial state for State priority
// ac_state is coin on ac and vice versa ac
// ad_state is empty side bob
// bc_state is coin on bc and vice versa bc
// bd_state is empty side bob
//ac_state,ad_state,bc_state,bd_state
max_cur_state = SAB;
assign cur_state[1:0] = conv(ac_dif,ad_dif,bc_dif,bd_dif,ids_ids_filt);
initial state
// state when intial_state = ==0
// Initial states are OUTSIDE and INSIDE => MAIN_SENSOR
if (initial_state == ANALOG && ids_ids_filt == SAB) {cur_stateendmodule
