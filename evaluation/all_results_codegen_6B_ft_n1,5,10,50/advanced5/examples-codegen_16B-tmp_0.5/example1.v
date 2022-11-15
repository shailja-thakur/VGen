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
//The FSM transitions between states S1, S2, S3 with the following conditions:
//1. If input a is high and input b is low, then transition to S1
//2. If input a is low and input b is high, then transition to S2
//3. If input a is low and input b is low, then transition to S3
//4. If input a is high and input b is high, then transition to S3
always @(posedge clk)
begin
  cur_state <= IDLE;
  if(a) next_state <= S1;
  else if(b) next_state <= S2;
  else next_state <= S3;
  if(next_state != IDLE)
    cur_state <= next_state;
end
endmodule
