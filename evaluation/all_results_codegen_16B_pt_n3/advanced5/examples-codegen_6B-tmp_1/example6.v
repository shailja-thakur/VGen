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
always @(posedge clk)
begin
    cur_state <= SA;         // when a is high, cur_state is SA
    if (cur_state == SA)
        next_state <= SAB; // when a is high, next_state becomes SAB
    cur_state <= SB;         // when b is high, cur_state is SB
    if (cur_state == SB)
        next_state <= SAB; // when b is high, next_state becomes SAB

    if (next_state == SAB)
        next_state <= SA; // next_state is SA
    cur_state <= SAB;        // next_state is SAB, but set cur_state
    next_state <= SB;        // cur_state is SB
    cur_state <= next_state; // next_state is SB, so set cur_state to SB
end
endmodule
