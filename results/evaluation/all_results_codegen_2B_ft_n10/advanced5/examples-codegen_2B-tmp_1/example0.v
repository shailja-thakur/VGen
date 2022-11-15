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
// if input a or b are high, state changes to SA.
// if any input to the switch is low, state changes to IDLE. 
always @(posedge clk)
begin
if (reset == 1'b1)
cur_state <= IDLE;
else
cur_state <= next_state;
case (cur_state)
IDLE:
case (a, b):
2'b01:
next_state <= SA;
2'b10:
next_state <= SB;
default:
next_state <= IDLE;
endcase
case (cur_state)
SA:
case (b):
2'b10:
next_state <= SAB;
default:
next_state <= SA;
endcase
case (cur_state)
SB:
case (b):
next_state <= SA;
2'b10:endmodule
