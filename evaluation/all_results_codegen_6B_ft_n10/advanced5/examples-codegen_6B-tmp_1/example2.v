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
// If only one of the input is high, state changes to SB.
// If neither of the input are high, state changes to IDLE.
always @(posedge clk or negedge reset) begin
	if(reset == 0) 
	cur_state <= IDLE;
	else 
	cur_state <= next_state;
end
// State machine. Based on the current state, next state is generated.
// When the state is SAB:
// If a input is Kobmo Kin (multiple of 3 and less than 20)
// New state is SB. If this state transition happens, if 'z' flag is high, then ZOH is set.
always @(*) begin
	IDLE: begin // When idle state, output 0.
	next_state = SAB;
	end
	SA: begin // When SAB state, output 0.
	next_endmodule
