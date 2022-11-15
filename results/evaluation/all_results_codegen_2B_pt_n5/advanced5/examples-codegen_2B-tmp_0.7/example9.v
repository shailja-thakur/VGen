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
//It expects the inputs to be low
//This is an FSM with the output z high when each of the input signals a and b are both high

always @(posedge clk)
  case(cur_state)
    case(IDLE)
      if(a==0 && b==0){
        next_state = S1;
      }
      if(a==1 && b==0){
        next_state = S2;
      }
      if(a==0 && b==1){
        next_state = S3;
      }
      if(a==1 && b==1){
        next_state = S1;
      }
    endcase
    case(S1)
      if(a==0 && b==0){
        next_state = IDLE;
      }
      if(a==1 && b==0){endmodule
