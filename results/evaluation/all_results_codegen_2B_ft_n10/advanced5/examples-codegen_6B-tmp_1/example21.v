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
// If input a is high and b is also high, state change to SB.
// If only a is high, state changes to S1.
// if only b is high, state changes to S0.
always @(*) begin
cur_state <=#1 next_state;
end 

always @(next_state)
case(next_state) 
IDLE : if(a && b)
next_state<=SA;
else if(a)
next_state<=S1;
else if(b)
next_state<=S0;
SA : if(a && b)
next_state<=SA;
else if(a)
next_state<=SB;
else if(b)
next_state<=S0;
SB : if(a && b)
next_state<=SA;
else if(a)
endmodule
