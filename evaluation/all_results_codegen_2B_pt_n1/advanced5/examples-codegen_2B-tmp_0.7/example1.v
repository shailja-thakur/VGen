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
//The output z is low if both inputs are low.
always @(posedge clk)
case(cur_state)

S1_1:
  if (a==1 && b==0)
    next_state = S1;
  else
    next_state = IDLE;
  break;

S2_1: // The second state is if the state is S1 and a is high and b is low.
  if (a==0 && b==1)
    next_state = S2;
  else
    next_state = IDLE;
  break;

S3_1: // The third state is if the state is S2 and a is low and b is high.
  if (a==1 && b==0)
    next_state = S3;
  else
    next_state = IDLE;
  break;endmodule
