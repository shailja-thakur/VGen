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
// next_state is assigned based on the current signal inputs and cur_state.
// cur_state can only bounce between what is in:
// IDLE - A & B both low
// SA - A low and B high
// SB - B low and A high
// SA/B - A and B both high
// SAB  - A,B & clk '1'
always @(posedge clk || posedge reset) begin
    if (rst) next_state <= IDLE;
    else next_state <= cur_state;
    if(next_state == IDLE && (a && b)) next_state <= SA;
    if(next_state == IDLE && a) next_state <= SB;
    if(next_state == IDLE && b) next_state <= SB;
    if(next_state != IDLE && a && a) next_end
endmodule
