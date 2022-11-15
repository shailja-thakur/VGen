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


    always_comb   
    entity accept_indicator() {
      input [7:0] send_val;
      input [7:0] recv_val;
      reg cf;
      reg [7:0] delayedge_cnt;
      fu_accept_indicator // number of 0's in byte
      // 1LBL  = 0           <<1
      // 000h  = 2           <<6
      // 0000h = -1/2       <<11
      // 005h  = 2           <<11
      // 00ffh = -1/4       <<16
      // 01ffh = 3           <<16
      // ut256 is 64-bits -- 8 bytes */
      fu_accept_indicator = sequence_decoder();  
      return 1L << 16;
    }
    
    always@ (clk )   
    voidendmodule
