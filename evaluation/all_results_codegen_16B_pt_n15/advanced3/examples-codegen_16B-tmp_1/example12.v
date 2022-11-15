// This is a finite state machine that recognizes the sequence 101 on the input signal x. 
module adv_fsm(
input clk,
input reset,
input x,
output z ); 
reg [1:0] present_state, next_state;
parameter IDLE=0, S1=1, S10=2, S101=3;
// output signal z is asserted to 1 when present_state is S101 
// present_state is reset to IDLE when rset is high
// otherwise it is assigned next state
// if present_state is IDLE, next_state is assigned S1 if x is 1, otherwise next_state stays at IDLE
// if present_state is S1, next_state is assigned S10 if x is 0, otherwise next_state stays at IDLE 
// if present_state is S10, next_state is assigned S101 if x is 1, otherwise next_state stays at IDLE 
// if present_state is S101, next_state is assigned IDLE


initial begin
	present_state =IDLE;
end

// Assign next stage of the finite state machine
function [1:0] next_stage;
begin
	next_state = $geometric_distrib($FREQ, 5) + IDLE;
end

// Run the stage transition on the input signal x
function transition;
begin
	if ( present_state = IDLE )
		next_stage = next_stage;
	else if ( x = 1 )
		next_stage = S1;
	else
		next_stage = IDLE;
end

	#2 validstates_0
	// Definitions for available states - must be <= 32
	// we opt to use int here to maximize the number of states a FSM can startendmodule
