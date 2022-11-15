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
//This is done by using a single input to determine whether the output is high or low.
//If the input is a then the output is high.
//If the input is b then the output is low.
always @(posedge clk)
  cur_state <= next_state;

always @(posedge clk)
  if( next_state == S1)
  {
    z <= a;
    cur_state <= S2;
  }
  else if( next_state == S2)
  {
    z <= b;
    cur_state <= S3;
  }
  else if( next_state == S3)
  {
    z <= 1;
    cur_state <= IDLE;
  }
  else
  {
    z <= 0;
    cur_state <= IDLE;
  }
endmodule
