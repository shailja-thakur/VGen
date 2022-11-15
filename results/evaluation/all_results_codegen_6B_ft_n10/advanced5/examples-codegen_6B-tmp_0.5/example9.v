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
// if input a and b both are low, state changes to SA.
// if input a is high and b is low, state changes to SB.
always @(*) begin
cur_state <= next_state;
end
always @(a or b) begin
case(cur_state)
IDLE : begin
	if (a) begin
	next_state = SA;
	end
	else if (b) begin
	next_state = SB;
	end
	else begin
	next_state = IDLE;
	end
end
SA : begin
	if (a) begin
	next_state = SA;
	end
	else if (b) begin
	next_state = SB;
	end
	else begin
	next_state = SAB;
	end
end
SB : begin
	if (a) begin
	next_stateend
end
end
endmodule
