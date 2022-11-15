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
assign z = {1,1,1,1};
always @(posedge clk)
begin
    cur_state <= SA | SB | SAB;
    next_state <= (_eval(a) | _eval(b));
    if ((cur_state == SAB) & (_eval(a) | _eval(b) | _eval(a) | _eval(b)))
        z <= 1;
    if((cur_state != IDLE) &&
    ((a | b) != 0) &
    (_eval(a) | _eval(b) |
    (_eval(a) | write_a() | _eval(b)) |
    (_eval(b) | write_b() | _eval(a))))
    {
        next_state <= SAB;
        cur_state <= next_state;
    }
    if(cur_end
endmodule
