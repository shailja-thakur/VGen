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
// else if(a is blocked)
// state change to SA when b asserted high.
// else if both inputs are low, then the state remains NONE.
always @(posedge clk or posedge reset)
 begin 
	if (reset) 
	cur_state <= IDLE;
	else 
	cur_state <= next_state;
 end
// State Transition logic:
always @(cur_state or a or b)
 begin
case(cur_state)
IDLE: begin
 if (a & b)
	 next_state = SAB;
 else if (a)
	next_state = SA;
else if (b)
	next_state = SB;
else
	next_state = IDLE;
	end
SA: begin
if(a)
	next_state = SAC;
else
	next_state = SAend
end
endmodule
