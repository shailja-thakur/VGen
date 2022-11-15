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
always @clk begin
with cur_state,next_state
// Using FSM Framework
if (clk.negedge && reset = '0' && SAB == cur_state) begin
next_state <= IDLE;
end
else begin
next_state <= cur_state;
end
end
endaction
// This is intended to do the following for a FSM:
// clock = 1,reset = 1 would reset the FSM and then reset again after clk.negedge.
// clock = 1,reset = 0 would read in the input pins a and b and then send them to the next stage of the FSM or a stub.
// clock = 0,reset = 1 would allow the FSM to read the inputs.
// clock = 0,reset = 0 would not perform any action at all.
always @clk begin
if (reset = 1) begin
next_end
endmodule
