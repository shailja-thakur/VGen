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


// Execute a single transition of the state machine. On error, assert high.
function void next_transition( x );

void next_transition( x )
{ 
	switch(present_state) 
	{ 
		case IDLE: 
			switch( x )
			{
				case 1: 	// S1 
					present_state = S1; 
					next_state = S10; 
					break;
				default: 	// SH,L 
					break;
			}
			break; 
		case S1: 
			switch( x )
			{ 
				case 0: 	// S10 
					present_state = S10; 
					break; 
				default: 	// IDLE 
					break; 
			}
			break; 
		case S10:endmodule
