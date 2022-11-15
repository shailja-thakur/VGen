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
#5 /clk <= clk and reset;
// reset is a signal for triggering interrupt on zero crossing of
// clk at half cycle count

always   begin
  #5 STATE="IDLE";
  #5 PRESENT_STATE=IDLE;
always end
wire CLKC;
wire RXC;

always_comb
#5 CLKC=clk;
// input then clock signals are state of signals
#5 next_state=STATE;
// next_state=STAT0 is asserted when clk=0; rset=active while mid bit is 0
// next_state=STAT1 is asserted when clk=0; rset=active while mid bit is 1
// next_state=STAT2 is asserted at middle bit of next ck's value
// next_state=STAT2 by rset=active when clk's lsbendmodule
