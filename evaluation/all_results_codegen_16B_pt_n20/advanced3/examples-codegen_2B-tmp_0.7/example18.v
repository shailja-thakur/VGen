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
  #4 = rst;
  #6 = clk;
  #9 = reset;
  #11 = x;
  #13 = 0;
  #14 = 1;
  #15 = 2;
  #16 = 3;
  #17 = 0;
  #18 = 0;
  #19 = 0;
  #20 = 0;
  #21 = 0;
  #22 = 0;
  #23 = 0;
  #24 = 0;
  #25 = 0;
  #26 = 0;
  #27 = 0;
  #28 = 0;
  #29 = 0;
  #30 = 0;
  #31 = 0;
  #32 = 0;
  #33 = 0;
  #34 = 0;
  #35 = 0;
  #36 = 0end
endmodule
