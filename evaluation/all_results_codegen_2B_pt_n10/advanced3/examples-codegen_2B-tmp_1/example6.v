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


found_2: decrement_out -> if(next_state==3) z[next_state=IDLE] = 1 (next_state S101) else z[next_state=IDLE] = 0 (IDLE)
found_1: decrement_out -> if(next_state==1) z[next_state=S1] = 1 (next_state S1) else z[next_state=IDLE] = 0 (IDLE)
found_0: decrement_out -> if(next_state==0) z[next_state=S10] = 1 (next_state S10) else z[next_state=IDLE] = 0 (IDLE)

// unassigned state
state_0: if (next_state=3) z[next_state=IDLE] = 1 (next_state S101) else z[next_stateendmodule
