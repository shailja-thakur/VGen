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
always @(*)
begin
  if(reset) begin
    next_state = IDLE; // reset the FSM
    z = 0iconc;
  if(clk) begin
    if(next_state == SA and a) next_state = SAB; // SAB if SA and a is high
    if(next_state == SB and b) next_state = SAB; // SAB if SB and a is high
    if(next_state == SAB and (a | b)) next_state = SAB; // SAB if (A | B) is high
    if(cur_state == IDLE) begin
      case(next_state)
        SA : //  SA state from idle
          next_state = SB; // SB state if IB comes from IDLE
          z = 1; // if no error happens during next_state test, output ofend
end
end
end
endmodule
