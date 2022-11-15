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
always @(*)
  begin
    next_state <= S1;
    if (z == 1) next_state <= S2;
    if (a == 1) next_state <= S3;
    if (b == 1) next_state <= S3;
    cur_state <= next_state;
    next_state <= 0;
  end;
initial begin
    z <= 0;
    if (~clk) cur_state <= IDLE;
    next_state <= cur_state;
    cur_state <= next_state;
end;
endmodule
