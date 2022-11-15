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
wire [1:0] r,r2;
reg [7:0] z;
reg [7:0] z2;
reg [3:0] z3;
reg [3:0] z4;
reg [3:0] z5;
reg [3:0] z6;
reg [3:0] z7;
reg [3:0] z8;
reg [3:0] z9;
reg [3:0] z10;
reg [3:0] z11;
reg [3:0] z12;
reg [3:0] z13;
reg [3:0] z14;
reg [3:0] z15;
reg [3:0] z16;
reg [3:0] z17;
reg [3:0] z18;
reg [3:0] z19;endmodule
