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
// if input a is high and b is low, then state changes to SA.
// if input a is low and b is high, then state changes to SB.
always @(posedge clk or posedge reset) begin
	if (reset) 
	cur_state <= IDLE;
	else 
	cur_state <= next_state;
end
// State machine:
always @(*) begin
	case(cur_state)
	IDLE: begin
	if (a==1'b1 && b==1'b0)
	next_state = SA;
	else if (a==1'b0 && b==1'b1)
	next_state = SB;
	else
	next_state = IDLE;
	end
	SA: begin
	if (a==1'b1 && b==1'b0)
	nextend
end
endmodule
