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
// If a is high but b is low, state changes to SB. If b is
// high but a is low, state change to SA.
always @(posedge clk or posedge reset)
if (reset) 
cur_state <= IDLE; 
else 
cur_state <= next_state;
// State machine to control z
always @(cur_state or a or b)
case (cur_state)
IDLE: z = 0;
SA : z = 0;
SB : z = 0;
SAB : z = 1;
endcase
assign next_state = cur_state; 
endmodule
