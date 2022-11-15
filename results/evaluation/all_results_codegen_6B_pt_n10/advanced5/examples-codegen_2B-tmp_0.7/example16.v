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
//The FSM can be transitioned from S1 to S2 or S3 by a clk transition.
//The FSM can be transitioned from S2 to S1 by a reset transition.

begin
//Initial state is S1.
cur_state = S1;
next_state = S1;

if (a == 0) next_state = S2;
if (b == 0) next_state = S3;

if ((cur_state == S2) and (clk == 0))
{
	next_state = S1;
}

if ((cur_state == S3) and (clk == 0))
{
	next_state = S1;
}

if (reset == 1)
{
    next_state = S1;
}
end

//In this case the output is high if the input signals a and b areendmodule
