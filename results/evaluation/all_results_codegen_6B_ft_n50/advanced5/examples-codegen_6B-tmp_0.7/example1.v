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
// If one of them is high, next state is SB if other is IDLE, SAB if a and b are low.
// if b is high, then next state is SAB
// else, if a is high, next state is SB

// Moore output logic:
// if (current_state = SAB and a and b are high)
// then z = 1;
// if (current_state = SAB and a and b are low)
// then z = 0;
// if (current_state = SB and b is high)
// then z = 0;
// if (current_state = SB and b is low)
// then z = 1;
always @(*) begin
	cur_state = next_state;
end
always @(*) begin
	if (cur_state == IDLE)
	begin
	if (a==1'b0 && bend
end
endmodule
