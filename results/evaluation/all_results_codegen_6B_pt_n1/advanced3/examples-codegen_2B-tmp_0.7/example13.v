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
  
  next_state = IDLE;
  present_state = IDLE;

  // reset the FSM if rset is high
  if (reset) next_state = IDLE;
  // otherwise, if x is 1, transition to state S1
  if (x == 1) next_state = S1;
  // otherwise, if x is 0, transition to state S10
  else if (x == 0) next_state = S10;
  // otherwise, if x is 1, transition to state S101
  else next_state = S101;

  present_state = next_state;
end

// This is a finite state machine that recognizes the sequence 101 on the input signal x. 
// It is implemented as a state machine with 4 states. 
// Each transition is very complex, and is implemented as a loop. 
// Theendmodule
