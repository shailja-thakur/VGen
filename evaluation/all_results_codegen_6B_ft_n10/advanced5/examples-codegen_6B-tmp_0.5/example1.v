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
// if input a is high, but b is not, state changes to SB.
// if b is high, but a is not, state changes to SA.
always @(posedge clk or cur_state or next_state or a or b) begin
	if(reset) 
	cur_state <= IDLE;
	else
	cur_state <= next_state;
end
// State machine to generate z.
always @(cur_state or a or b) begin
	case(cur_state)
	IDLE: 
	if(a and b)
	next_state = SAB;
	else if(a)
	next_state = SB;
	else
	next_state = IDLE;
	SAB: 
	if(a and b)
	next_state = SAB;
	else
	next_state = IDLEend
endmodule
