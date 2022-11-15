// This is an FSM.
module abro(
input clk, reset,  
input a,  b,
output z );
parameter IDLE = 0,
S1 = 1,
S2 = 2,
S3 = 3;
reg [1:0] cur_state,next_state;
//This is an FSM with the output z high when either of the input signals a or b are high irrsepective of their order.
always @(posedge clk)
if(next_state == IDLE)
{
  switch(cur_state){
    case IDLE :
      next_state = S1;
      break;
    case S1 :
      if(a) next_state = S1; else next_state = S2;
      break;
    case S2 :
      if(~b){ next_state = S1; }else next_state = S3;
      break;
    case S3 :
      next_state = IDLE;
      break;
  }
}

always @(posedge clk)
//This model assumes that there is only one level of hierarchy.  Tree designs caused errors.
//Following is how to convert one level hierarchy into another (use any level of hierarchy)
// by squaring the hierarchy.
reg [3:0] rowendmodule
