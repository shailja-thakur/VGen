// Design a Moore state machine with two states 0 and 1, one input in, and one output out. Reset state is 0.
module simple_fsm(clk, reset, in, out);
input clk;
input reset;
input in;
output out;
wire out;
reg present_state, next_state;
// In state 0, if in=1, stay in state 0. In state 0, if in=0, go to state 1
// In state 1, if in=1, stay in state 1. In state 1, if in=0, go to state 0
// out=1 in state 0 and out=0 in state 1
always @(posedge clk)
begin
	case next_state:
if (in) then
	next_state == 0
else
	next_state == 1
endif
end
end

// Design a router with n clients connected to n routers, n in the range 2^n to
// (2^n-1) to implement. Each router connects to the router to its left and to the
// router to its right. The router must coordinate the terminating condition provided
// to all router clients.

// One possible design for a fence with n clients with outages is simply a deadlock
// implemented using mutual exclusion in all startup states, such that the client
// that first happens to contact the routers they start in guarantees, as long
// as there is a supervisor router, that the client that next starts is the
// supervisor router. Since superuser networks won't have supervisor routers we
// will needendmodule
