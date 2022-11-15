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
//This is a state machine that will transition from IDLE to S1 when a is high, to S2 when b is high, to S3 when both a and b are high.
always @(posedge clk)
begin
if (cur_state == IDLE)
{
next_state = 0;
}
else if (cur_state == S1)
{
next_state = 0;
if ((a == 0) && (b == 0))
{
next_state = S3;
}
}
else if (cur_state == S2)
{
next_state = 0;
if ((a == 0) && (b == 1))
{
next_state = S3;
}
}
else if (cur_state == S3)
{
next_state = 0;
if ((a == 1) && (b == 0))
{end
endmodule
