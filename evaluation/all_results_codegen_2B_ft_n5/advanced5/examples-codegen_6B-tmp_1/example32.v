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
// if a is high but b is not, the state changes to SA.
// If a or b are not high, the state retains the previous value (IDLE).

always @(posedge clk or negedge reset) begin
if (reset == 1'b0)
	cur_state <= IDLE; 
else 
	cur_state <= next_state;
end
// State machine:
always @(cur_state or a or b) begin
case(cur_state)
IDLE: if (a == 1 && b == 1)
	next_state = SAB;
	else if (a == 1 && b == 0)
	next_state = SA;
	else if (a == 0 && b == 1)
	next_state = SB;
	else if (a == 1'b0 && b == 1'b0)
	next_end
endmodule
