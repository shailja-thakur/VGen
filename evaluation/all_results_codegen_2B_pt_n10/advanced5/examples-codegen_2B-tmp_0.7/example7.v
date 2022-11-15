// This is an FSM
module abro(
input clk,
input reset,
input a,
input b,
output z );
parameter IDLE = 0,
SA = 1,
SB = 2,
SAB = 3;
reg [1:0] cur_state,next_state;
// The output z is high when 1 is received for signals a and b in any order.
// If cur_state is IDLE and a and b are both high, state changes to SAB
// If cur_state is IDLE, and a is high, state changes to SA
// If cur_state is IDLE, and b is high, state changes to SB
// If cur_state is SA, and b is high, state changes to SAB
// If cur_state is SB, and a is high, state changes to SAB
// If cur_state is SAB, state changes to IDLE
// z is assigned one when cur_state is SAB
always @(posedge clk)
begin
if (reset == 1)
{
	cur_state = SB;
}
else
{
	if ((a == 1) && (b == 1))
	{
		if (cur_state == SAB)
		{
			cur_state = IDLE;
		}
		else
		{
			cur_state = SAB;
		}
	}
	else
	{
		if (cur_state == SB)
		{
			cur_state = SA;
		}
		else
		{
			cur_state = SB;
		}
	}
}
next_state = cur_state;
end
);
// This is a FSM for the logic of the decimal point on the inputs for which a and b are
// high at the same time.
module abro_decimalendmodule
