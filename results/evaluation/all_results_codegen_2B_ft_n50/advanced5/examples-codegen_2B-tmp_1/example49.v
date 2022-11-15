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
// if input a is high z is cleared.
// if input b is high, state changes to SB. 
always @(*)
begin
case(cur_state)
IDLE: begin 
	if(a & b)
	next_state=SA;
	else
	next_state=IDLE;
	z=0;
	end
SA: begin
	if(!a)
	next_state = IDLE;
	else 
	next_state = SB;
	z = 0;
	end
SB: begin
	if(b)
	next_state = SAB;
	else
	next_state = IDLE;
	z=0;
	end
SAB: begin
	if(!b)
	next_state=IDLE;
	else
	next_state = IDLE;
	z=0end
end
endmodule
