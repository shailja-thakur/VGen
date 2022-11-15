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
    initial state: IDLE
    case (S1)
      reg [1:0] state;
      state <= S1;
      next_state <= S2;
      //S1:
      next_state <= S2;
    case (S2)
      state <= S2;
      next_state <= S3;
      //S2:
      next_state <= S3;
      //S3:
      cur_state <= next_state;
      z <= state;
      
    default:
      next_state <= IDLE;
  endcase;

always @(posedge clk)
begin
case (next_state)
  case (S1)
    next_state <= S2;
    z <= state;
  case (S2)
    next_state <= S3endmodule
