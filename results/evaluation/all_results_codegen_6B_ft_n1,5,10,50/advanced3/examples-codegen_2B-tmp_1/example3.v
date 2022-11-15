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


`nc
#include<stdio.h>
 
//Pass the freq and x, via hardwired local variables. 
 
#include"adv_fsm.h"
clk clk; 
reset reset; 
x x; 
z z; 
 
  int idd1( int idxd )
{ 
  return idxd<0 || 0==idxd;
}
 
inline void Process()
{ 
  x = clk;

  if((x==0) && (reset==1))
  { 
  z=1;
  z=0; 
  next_state=IDLE; } 
  else if(((x==1) && ddd1(reset))==0)
  { 
  z=1;
  z=0; 
  next_state=S1endmodule
