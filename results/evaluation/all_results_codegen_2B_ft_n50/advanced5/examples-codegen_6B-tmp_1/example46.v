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
// If only a or b is high, the state remains the same.
// For all other combinations, state keeps stable.
always @(*) // Because this is a sequential state machine, this block creates the next state.
begin
if (cur_state==IDLE && a ==1 && b==1)
next_state <= SAB;
else if (cur_state==IDLE && a==1 && b==0)
next_state <= SAB;
else if (cur_state==IDLE && a==0 && b==1)
next_state <= SAB;
else if (cur_state==SAB && a==1 && b==1)
next_state <= SAB;
else if (cur_state==SAB && a==1 && b==0)
next_state <= SAB;
else if (cur_state==SAB && a==0 && b==end
endmodule
