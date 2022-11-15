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


// This module is an analog part using an FSM as an adaptive input
union delta_sig_u 
{ 
  delta_sig_v ul r1;
  struct {
    unsigned char chs[2];
  };
} delta_sig;


module delta_sig(clk,rst,i,delta);
 
fix2R j; 
input clk,rst;
net clk_i, clk_j;
reg [3:0] state, old_state;

state_sig : union delta_sig_u {
    unsigned char chs[5];
    long n;
} delta_u, delta_v, init_delta, signal_u;

wire delta_i;
net clk,rst_ext;

post_include lsr_get_endmodule
