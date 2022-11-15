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
// if input a is high and input b FAIL, the test is made hoping that the next logic will make the state pin SAB.
// if a is high and b is low or init, state retains maintinary.
// if b is high and a is settled, the state does not change, and z is high.
// Rules for state transitions:
// if a and b must become high to change state, and if changes the current output is forced to zero. 
// All the new inputs are taken into account on the next cycle. 
// ### drawback is that the output will be zero for a period. 

always @(posedge clk or posedge reset) begin 
	if(reset) 
	 cur_state <= IDLE; 
	else 
	cur_state <= next_state; // If b goes CAB and a = CAB, CAB gets recorded.
endendmodule
