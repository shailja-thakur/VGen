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


// This is an example of an advanced finite state machine. 
// The input signal x is the digital input. 
// The output signal z is the digital output. 
// The FSM is implemented in the function adv_fsm. 
// The FSM is declared in the module adv_fsm. 
// The module adv_fsm is instantiated in the program main. 
// The module adv_fsm is instantiated in the program main. 

begin
  begin
    if (x=1) then 
      present_state=S101; 
    else 
      present_state=IDLE; 
    next_state=S1; 
  end
  begin
    if (x=0) then 
      present_state=S10; 
    else 
      present_state=IDLE; 
    next_state=end
end
endmodule
