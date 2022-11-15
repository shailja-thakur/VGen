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
always @ (posedge clk)
begin
	if (reset)
	// Resetting the machine
	cur_state <= IDLE;
	else
	begin
	 	if (a == 1 && b == 1)
	 	cur_state <= SAB;
	 	else if (a == 1 && b==0)
	 	cur_state <= SA;
	 	else if (a == 0 && b == 1)
	 	cur_state <= SB;
	 	else
	 	cur_state <= IDLE;
	 end
end
always @ (cur_state)
begin
	case(cur_state)
	IDLE:
	begin
	//Edit the code so that cur_state changes to SB when b = 0 and a = 0. Remember that a = 0 and b = 1 is equivalent to b = 1 and aend
end
endmodule
