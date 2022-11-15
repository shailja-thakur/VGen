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
//The output z is high when a and b are high and low otherwise.
reg [3:0] state_count;

always @(posedge clk)
  if (reset == 1)
    cur_state = 0;
  else
    cur_state = next_state;
  next_state = (cur_state == 0) ? S1 : (cur_state == 1) ? S2 : (cur_state == 2) ? S3 : S1;
  state_count = state_count + 1;
  if ((a == 1) and (state_count == 3))
    z = 1;
  else if ((a == 0) and (state_count == 2))
    z = 0;
  else
    z = 0;
endmodule
