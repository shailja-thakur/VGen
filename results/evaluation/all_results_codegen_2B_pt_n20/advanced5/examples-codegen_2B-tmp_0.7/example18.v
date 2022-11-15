// This is an FSM
module abro(
input clk,
input reset,
input a,
input b,
output z );
parameter IDLE = 0,
SA = 1,
SB = 2,
SAB = 3;
reg [1:0] cur_state,next_state;
// The output z is high when 1 is received for signals a and b in any order.
// If cur_state is IDLE and a and b are both high, state changes to SAB
// If cur_state is IDLE, and a is high, state changes to SA
// If cur_state is IDLE, and b is high, state changes to SB
// If cur_state is SA, and b is high, state changes to SAB
// If cur_state is SB, and a is high, state changes to SAB
// If cur_state is SAB, state changes to IDLE
// z is assigned one when cur_state is SAB
wire [5:0] triggered;
reg [1:0] state;
// This is the SAB component of the FSM
// The state machine is triggered when z is high
reg [15:0] a,b;
reg [20:0] a_buf,b_buf;
reg [24:0] a_acc,b_acc;
reg [25:0] a_out,b_out;

always @(posedge clk)
// This is the A component of the FSM
// If a is high and cur_state is IDLE, change to SA (1)
// If a is high and cur_state is SA, change to SB (2)
// If a is high and cur_state is SB, change to SAB (3)
begin
if (a == 1 and cur_state == IDLE)
{
    cur_state =end
endmodule
