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
// Busy unit last when cur_state is IDLE and output is high
// Busy unit first when cur_state is SB and output is high
reg [1:0] state;
always @(posedge clk)
begin
    // wait for a completion for a few clocks or for a reset
    if (state[state_idx] == IDLE)
    begin
    case (cur_state[state_idx], cur_state[other_state_idx])
    case (SA, IDLE)
        z <= 0;
        go  next_state[state_idx];
        next_state[state_idx] <= IDLE;
        nobusy <= 1;
        dontcare <= 1;
   default:
        z <= 0;
    endcase;
// reset implemented here.
    case (IDLE, RESET)
end
endmodule
