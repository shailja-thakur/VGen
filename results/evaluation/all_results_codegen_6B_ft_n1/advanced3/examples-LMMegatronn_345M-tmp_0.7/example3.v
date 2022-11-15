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


assign z = (present_state == S11 || ~present_state == S12) && ~present_state[0];

always@(x or y or z or next_state) 
case(present_state)
	IDLE:
		if(x == 1&&x == 0) 
			next_state = S1;
		else
			next_state = IDLE;
	S1:
		next_state = S0;
	S10:
		next_state = S10;
	S11:
		next_state = S11;
	S12:
		next_state = S12;
	S13:
		next_state = S14;
	S14:
		next_state = S15;
	S15:
		next_state = Sendmodule
