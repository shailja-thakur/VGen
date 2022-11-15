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
always @(posedge clk or (a or b))
  next_state <= S1;
always @(negedge clk)
  cur_state <= next_state;

// This is an FSM with the output z high when both inputs are high
always @(posedge clk)
  z <= (a and b);

//This is an FSM with the output high when the first input is high
always @(posedge clk)
  if(a)
    next_state <= S2;

//This is an FSM with the output high when the second input is high
always @(posedge clk)
  if(b)
    next_state <= S3;

//This is an FSM with the output high when the first input is high
always @(posedge clk)
  if(a)
    next_stateendmodule
