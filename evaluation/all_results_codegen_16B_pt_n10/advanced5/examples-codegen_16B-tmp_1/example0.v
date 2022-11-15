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
reg [1:0] z = 2'h0,state_out;
reg [1:0] a = 1'b0,b = 1'b0;
assign cur_state = state_out;
// One cycle of the FSM
@always_reset
void resetState(){
	if (reset) cur_state = IDLE;
}
// Invariants:
// cur_state either SAB or SA
//
// we do not handle vexing cases like this:    (SA)(SAAB), since
// vexing the set of allowed values would make the alphabet very large.
//            (SA)(a,b),        (SA) first clock is b, second is a;
//            (SA)(a,b),        (SA) if first clock is a, second is b
//            (SA)(a--b),       (SA) if clock is decreendmodule
