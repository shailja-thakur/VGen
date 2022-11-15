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
reg [3:0] a_state,b_state;
//This is an FSM with the output z high when both of the input signals a and b are high.
reg [3:0] both_state;

always @(posedge clk)
begin
  if (reset) begin
    cur_state <= IDLE;
    next_state <= IDLE;
    a_state <= IDLE;
    b_state <= IDLE;
    both_state <= IDLE;
  end
  else begin
    cur_state <= S1;
    next_state <= S1;
    a_state <= S1;
    b_state <= S1;
    both_state <= S1;
  end
end

//This is an FSM with the output z high when both of the input signals a and b are high.
always @(posedendmodule
