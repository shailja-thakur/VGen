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
reg z;
always @(posedge clk) begin
    // The first state of the FSM is IDLE
    if (reset) begin
        cur_state <= IDLE;
        next_state <= IDLE;
    end else if (!a && !b) begin
        cur_state <= IDLE;
        next_state <= IDLE;
    end else if (!a) begin
        cur_state <= SA;
        next_state <= IDLE;
    end else if (!b) begin
        cur_state <= SB;
        next_state <= IDLE;
    end else begin
        cur_state <= SAB;
        next_state <= IDLE;
    end
    case (cur_state)
        // The transition to the SAB state happens when both a and b are high
        SAB : begin
            z <= 1;
        endend
endmodule
