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
// if input a is high but b is low, state changes to SA. 
assign z = ({cur_state}!=={IDLE});
always @(posedge clk or reset)
if (reset)
cur_state <= IDLE;
else
cur_state <= next_state;
// FSM next state and outputs logic:
always @(*)
begin
case(cur_state)
IDLE:
begin
if(a==high & b==high)
	next_state = SA;
else if (b==high)
	next_state = SB;
else
	next_state = IDLE;
end
SA:
begin
	if(a==high)
	begin
	next_state = IDLE;
end
else
	next_state = SAB;
end
SB:
begin
	if(a==high)
end
end
endmodule
