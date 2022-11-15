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
  #5:rst = 1; 
  #6:rst = 0; 
  #7:rst = 0; 
  #8:rst = 0; 
  #9:rst = 0; 
  #10:rst = 0; 
  #11:rst = 0; 
  #12:rst = 0; 
  #13:rst = 0; 
  #14:rst = 0; 
  #15:rst = 0; 
  #16:rst = 0; 
  #17:rst = 0; 
  #18:rst = 0; 
  #19:rst = 0; 
  #20:rst = 0; 
  #21:rst = 0; 
  #22:rst = 0end
endmodule
