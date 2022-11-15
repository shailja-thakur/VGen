// This is an FSM 
module abro(
input clk,
input reset,
input a,
input b,
output z 
);
parameter IDLE = 0, SA = 1, SB = 2, SAB = 3;
reg [1:0] cur_state,next_state;
// Update state or reset on every clock edge.
// Output z is asserted 1 when the current state is SAB.
// Nest state generation logic:
// if input a and b both are high, state changes to SAB. 
// If only a is high, the next state is SA.
// If only b is high, the next state is SB.
always @(*) 
case (cur_state)
IDLE: 
	if(a)
	begin
	next_state = SA;
	z=~a;
	end 
else
	begin
	next_state = IDLE;
	z=0;
	end
SA: 
	begin
	if(b)
	begin
	next_state = IDLE;
	z=0;
	end
	else
	{next_state,z}= {based on b,z};
	end
SB: 
	begin
	if(b)
	begin
	next_state = BUFFER_DELAY
	end
	else
	next_state = IDLE;
	end
	endmodule
