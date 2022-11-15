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
reg z = 1;
always@(inty [4,4] a,inty [4,4] b) begin
    case("(a[0])?8\'bxxxx:((b[0])?8\'bxxxx:(((a[1] ?1\'b1:0\'b0) ?1\'b1:0\'b0) ?0\'bx:0\'b0) ?0\'bx:0\'b0)"
                    "(a[1])?8\'bxxxx:(((b[1])?8\'bxxxx:(((a[2] ?1\'b1:0\'b0) ?1\'b1:0\'b0) ?0\'bx:0\'b0) ?0\'bx:0\'b0)"
                    "(a[2])?8\'bxxxx:(((b[2])?8\'bend
endmodule
