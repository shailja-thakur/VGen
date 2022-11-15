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
always @ (posedge clk
or next_state == cur_state
or next_state == IDLE)
    z = 1;
    cur_state = next_state;
end

module psm(
input clk,
input reset,
input i,
input o,
input q,
output r );
parameter IDLE = 0;
reg [1:0] cur_state,next_state;
// cycle count increments when selector goes low - 0 => 1, 1 => 2, ...
// Selector goes high if cur_state is IDLE and both input signals
// returned to high
always @ (posedge clk
or next_state == IDLE
or next_state == 0)
    r = i & !q;
    cur_state = next_state;
end

// w is the same as z and is only enabled at low time ofendmodule
