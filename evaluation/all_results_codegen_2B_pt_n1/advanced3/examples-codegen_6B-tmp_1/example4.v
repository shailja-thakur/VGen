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


module 
 adv_uart(
input clk,
input = clk,
input reset,
output data,
output rst );        
 

module timer_0 (
   input clk,
   input addr,
   input prgr,
   output load,
   output not_done,
   output load_dummy,
   output dummy_judge,
   output logmy
);
 
module 
 logmy(
input clk,
input addr,
input load,
input load_dummy,

input not_done,
input load_dummy,
input dummy_judge
 );

// #######################################
// module for Manual Filing
// #######################################

module manual_filing(
 input clk,
 output f1,
 output f2,
 output f3
 );

 
 enum Fmtendmodule
