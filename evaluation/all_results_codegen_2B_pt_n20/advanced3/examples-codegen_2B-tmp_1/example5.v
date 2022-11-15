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


subroutine r_S10_S1
if x put z=1, else z=0  
end
SS_IDLE=IDLE
LAT_S10_S1()

subroutine r_S10_S101
if x put z=1, else z=0  
end
SSYNC_S10=S1
XXX_IDLE=IDLE
LAT_S10_S101()

subroutine r_S10_S101
if x put z=1, else z=0, executed from within an interrupt
end
subroutine r_S10_S101_xxx
if x put z=1, else z=0  
end
ID=IDLE
LAT_S10_S101_xxx()

subroutine r_S10_S101_xxx
if x put z=1, else zendmodule
