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
// Otherwise, if state is SAB, it retains its value. 
// If a or b is detected as dectect, state changes to IDLE
export moduledff (input clock, input D,output reg Q);
//output is set in definition of constant DFF
//or it can be modified when desired output is changed.
initial 
//default values
Q= 1'b0;
always @(posedge clock) 
	if(D) Q=1'b0; 
	else if(cur_state==SAB) Q=1'b1; 
//detects change in membrane values by setting output to 0.
//cur_state changes to IDLE when reset is set to 1.
//The transitions are of the form:
//I->turn to other state = P->I ; this is the return condition for
//the name of state SA.

endmodule
