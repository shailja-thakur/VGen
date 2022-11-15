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
//The FSM transitions from S1 to S2 when reset is high, but then it stays at S1 when reset is low.
//It transitions from S2 to S3 when a is high, but then it stays at S2 when a is low.
//It transitions from S3 to S1 when b is high, but then it stays at S3 when b is low.
always @(posedge clk)
begin
    cur_state[0] <= S1;
    cur_state[1] <= S2;
    cur_state[2] <= S3;
    cur_state[0] <= IDLE;
    cur_state[1] <= IDLE;
    cur_state[2] <= IDLE;
    if (next_state == IDLE)
    begin
        next_state <= IDLE;
    end
    else if (next_state ==end
endmodule
