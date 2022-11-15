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
// ASSIGNMENT NOT AUTHORIZED
assert($guard(a,cur_state) && $guard(b,cur_state));
que(IDLE,next_state,SA,SB); next_state <= SB, next_state <= IDLE ;
(* next_state is IDLE and a and b are high *) implies long (next_state == IDLE) then long (cur_state == IDLE) implies long (cur_state[1:0] = SA, z[0] = 1) else long (cur_state[1:0] = SA, z[1] = 1) then long (cur_state[1:0] = SB, z[0] = 1, z[1] = 1)+ assert ($guard(z,next_state))+ assert ($guard(a,next_state) && $guard(b,next_state));
//! ASSIGNMENT NOT AUTHORendmodule
