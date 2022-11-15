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
// z is assigned three when cur_state is SA
// z is assigned two when cur_state is SB
// z is assigned zero when cur_state is IDLE
always @(cur_state)
begin
case(cur_state)
IDLE: if (a)
	begin
	next_state = SA;
	z = 3;
	end
	else if (b)
	begin
	next_state = SB;
	z = 2;
	end
	else
	begin
	next_state = IDLE;
	z = 0;
	end
SA: if (b)
	begin
	next_state = SAB;
	z = 3;
	end
	else
	begin
	next_state = SA;
	z = 2;
	end
SB: if (a)
	begin
	next_state = Send
end
endmodule
