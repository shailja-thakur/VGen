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
// if a or b is high, state changes to SB or IDLE.
always @(posedge clk or posedge reset) begin
if(reset)
cur_state <= IDLE;
else 
cur_state <= next_state;
end
// State machine to generate z. 
always @(cur_state or a or b) begin
case(cur_state)
IDLE: begin
z = 0;
if(a & b)
next_state = SAB;
else if(a)
next_state = SB;
else if(b)
next_state = SAB;
else 
next_state = IDLE;
end
SAB: begin
z = 1;
next_state = SAB;
end
SB: begin
z = 0;
next_state = SAB;
end
default: next_state = IDLE;end
endmodule
