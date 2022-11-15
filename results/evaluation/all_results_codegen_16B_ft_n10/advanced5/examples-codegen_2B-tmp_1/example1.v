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
//Note: this simulates the tsHugemac interface
//Only to schedule acceses for the squelch port PI_n

always @(posedge clk)
  //Debugging Regs
  if (a == 0 && b == 0 && cur_state != S1)
    next_state = S1;
  else if (a == 0 && b == 0 && cur_state == S1)
    next_state = S2;
  else if (a == 0 && b == 1 && cur_state != S3)
    next_state = S3;
  else
    next_state = S1;          //S throws panic for the b==0 && a == 1 case.

  cur_state = next_state;
  six_data[P_n] = z;
  next_state = (next_state+1) % 4;

endmodule
