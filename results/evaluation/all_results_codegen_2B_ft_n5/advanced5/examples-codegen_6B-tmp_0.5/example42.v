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
// if a is high and b is high, state changes to SB.
// if a is high and b is low, state changes to S1.
// if b is high and a is low, state changes to S2.
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
	if (a==1 && b==1)
	next_state = SA;
	else if (a==1 && b==0)
	next_state = S1;
	else if (a==0 && b==1)
	next_state = S2;
	else
	next_state = IDLE;
	end
end
endmodule
