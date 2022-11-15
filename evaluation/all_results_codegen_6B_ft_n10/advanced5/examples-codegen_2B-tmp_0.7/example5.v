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
reg [0:5] state_table[4][3][6];
//This is the output state when one of the inputs a and b are high and the other one is low.
reg [5:0] outputs;

always @(posedge clk)
//This is the first state.
case of 
  S1:
    cur_state = 0;
    next_state = S2;
    break;
//In this state the output z is high.
  S2:
    if( a == 1 and b == 0 )
      outputs = 5;
    else
      outputs = 0;
    cur_state = 1;
    next_state = S3;
    break;
//In this state the output z is high.
  S3:
    if( a == 0 and b == 1 )
      outputs = 5;
    endmodule
