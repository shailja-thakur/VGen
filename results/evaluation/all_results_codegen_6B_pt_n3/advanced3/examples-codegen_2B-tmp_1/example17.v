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

next_state = 0;

  // Output zero is asserted to 1 if first transition was S1
  if (
  ( 
  ( XOR(present_state, next_state )    = 1L & ({1:0})  // If present_state was not IDLE, ...
  & present_state <> IDLE          
  | present_state <> S1            [00]
  ) 
  && 0 == (~0L & gm_reset))          

  && (( XOR(x, next_state) <> 1) || (0xFFFFFFFF & (gm_reset | sim_fsm.rst))), // ... do not change to zero if clear again if reset,
  x = 1;

if~((gm_clk <& integer(Clocks)),
x < 0xFFFFFFF8)
{
end
endmodule
