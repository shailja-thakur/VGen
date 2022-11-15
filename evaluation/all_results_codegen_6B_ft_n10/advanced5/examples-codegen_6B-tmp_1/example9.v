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
// Otherwise, if the SAB output is not asserted for 2nd time, 
// next time when a or b change, output is deasserted.
always @(posedge clk or posedge reset) 
	begin
 	if( reset )
 	cur_state<= IDLE;
 	else 
 	cur_state<=next_state;
 	end 

// State changing logic:
// SAB: If a and b both asserted, next state is SAB.
// SAA: If a and b asserted, and not yet SAB, next state is SAA.
// In other words, test cases with input a or b asserted result in:
// IDLE->SAA->SAB
// IDLE->SAA->SAB
// SA->SAA->SAB
// SAA->SAA->SAB.
// Notice how theendmodule
