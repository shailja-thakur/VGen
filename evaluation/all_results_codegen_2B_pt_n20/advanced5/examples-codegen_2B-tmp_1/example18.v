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

living clock;

start
clk <= '1';
reset <= '1';

cur_state <= idling;
next_state <= idling;

always @ (clk, reset)
begin
if (cur_state is IDLE) next_state <= SAB;
if (a is '1') next_state <= SB;
if (b is '1') next_state <= SAB;
if (reset is '1') next_state <= SA;
else
next_state <= cur_state;
end

// Write state to a register so that the Z wave can hear it.
if (cur_state is SCACK) write cur_state to 2'b00;
else if (cur_state is SCANL) write cur_state to 2'b01;
else if (cur_state is SCANH) write cur_state to 2'endmodule
