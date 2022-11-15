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
// if only a is high, state drops to SA.
// if only b is high, state stays the same but is advanced to SA.
assign z = (cur_state == SAB) || (cur_state == SB && a && b) ? 1: 0;
// Data path for state transitions
always@(posedge clk)
begin
if(reset)
cur_state <= IDLE;
else
cur_state <= next_state;
end
// State machine implementation
always@(cur_state or a or b)
begin
case(cur_state)
IDLE: begin
if(a)
next_state <= SA;
else if(b)
next_state <= SAB;
else
next_state <= IDLE;
end
SA: begin
if(a)
next_state <= SA;
else if(b)
next_state <=end
end
endmodule
