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


      // STATE 0
if ( reset is '0' and clk is '1' ) begin
    next_state = IDLE;
end
      // STATE 1
if ( abs(x) > 0 ) begin
    if ( x is '1' and present_state is IDLE ) begin
        next_state = S1;
    end
    if ( x is '0' and present_state is IDLE ) begin
        next_state = IDLE;
    end
end
      // STATE 2
if ( abs(x) is '0' and present_state is S1 ) begin
    next_state = S10;
end
      // STATE 3
if ( x is '1' and present_state is IDLE ) begin
    next_state = S101;
end
      // STATE 4
if ( x is '0' and present_state is IDLEendmodule
