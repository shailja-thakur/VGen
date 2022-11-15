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
// If at any state, z is asserted, the sequence should be:
// A -> B -> A -> 
// So if b is asserted in any of the three above states, z is asserted eleven times.
// Code for displaying current state transitions.

//Do not use the nextstate variable in place of the state variable
//if you want to see the sequence in a text file 

always@ ( * ) 
begin 
cur_state = next_state;
end 

//State transition logic:
always@ (cur_state or a or b) //cur_state(state at any given time) and state(state of next instruction)
begin
next_state = cur_state;
case(next_state)
IDLE: // List all states here....
if(a)
next_state = SA;
else if(b)
next_state = SB;
elseend
endmodule
