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
// Otherwise, if any output is high, state change to SB.
always @(*) begin 
	cur_state = next_state;
end
always @(posedge clk) begin
	if (reset)
	cur_state = IDLE;
	else
	cur_state = next_state;
end
// State machine:
always @(*) begin
	case(cur_state)
	IDLE: next_state = a ? SAB : IDLE;
	SA: next_state = b ? SAB : IDLE;
	SB: next_state = a ? SAB : IDLE;
	SAB: next_state = a ? SAB : SB;
	default: next_state = IDLE;
	endcase
end
// Output logic:
assign z = (cur_state == SAB);
endmodule