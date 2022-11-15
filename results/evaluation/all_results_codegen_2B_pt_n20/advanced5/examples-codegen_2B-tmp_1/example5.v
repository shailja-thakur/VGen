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
reg [1:0] new_state;

always @(posedge clk) begin
    next_state = (a ? 0 : 1);
    cur_state = next_state;
    // Read current state and next state from parameters
    merge(cur_state,next_state);

    if (reset == '1')
    {
        // when the reset signal is high, change states
        new_state = (a ? (reset ? 1 : 2) : (b ? (reset ? 2 : 3) : 1));
    }
    else
    {
        // when reset is low, maintain current state so output reflects state changes
        new_state = cur_state;
    }

    z <= new_state;
end

endmodule
