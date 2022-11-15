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


always @(*)
begin
if clk==1 then
#if (IDLE==0)
   z=1;
#else
   z=0;
#endif
end
 
if ~reset==1 then
if (x==1)
#if ((S10>=3) or (S10>=1 and (IDLE==0 or S10>S101)))
      next_state=S10;
#else
     next_state=IDLE;
#endif
else
if (x==0)
#if ((S1==3 or IDLE==3) and (S101==3 or IDLE==3))
      next_state=IDLE;
#else
     next_state=S1;
#endif
else
if (x==1)
#if ((IDLE==3 or (S101==3 or IDLE==3endmodule
