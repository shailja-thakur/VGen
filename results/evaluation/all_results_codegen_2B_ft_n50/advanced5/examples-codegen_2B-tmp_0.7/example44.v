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
// if only a is high, state changes to SA.
// if only b is high, state changes to SB.
// if any input is low, state changes to IDLE.
always @(posedge clk, posedge reset) begin
	if (reset)
	cur_state <= IDLE;
	else
	cur_state <= next_state;
end
always @(*) begin
	case (cur_state)
	IDLE: next_state = a & b;
	SA: next_state = b;
	SB:
	next_state = IDLE;
	default: next_state = IDLE;
	endcase
end
assign z = (cur_state == SAB); 
endmodule
