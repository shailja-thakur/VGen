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
    begin {
	next_state = IDLE;
	enable abort,next_state_gen,next_state_done;
	expect PARAMETER_ALIVE;
	next_state_gen = next_state;
	next_state_done = next_state;
	abort = 0;
    }
	next_state_done = SAB;
	next_state_gen = SAB;
	abort = 0;
uses abort,next_state_gen,next_state_done,__di.clo,__di.clr;
	next_state_gen = IDLE;
	next_state_done = IDLE;
	abort = a;
	z = 1;
end {
		// If cur_state is IDLE and a and b are both high, state changes to SAB
	if(next_stateendmodule
