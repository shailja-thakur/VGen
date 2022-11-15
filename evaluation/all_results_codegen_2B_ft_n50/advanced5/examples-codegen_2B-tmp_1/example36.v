// This is an FSM 
module abro(
input clk,
input reset,
input a,
input b,
output z 
);
parameter IDLE = 0, SA = 1, SB = 2, SAB = 3;
reg [1:0] cur_state,next_state;
// Update state or reset on every clock edge.
// Output z is asserted 1 when the current state is SAB.
// Nest state generation logic:
// if input a and b both are high, state changes to SAB. 
// if input b and a are both high, state becomes IDLE.
// if any of input a or b is high, the other is asserted high,
// and IDLE state is entered (making this the nest state).
always @(posedge clk) begin
if (!reset)
cur_state <= IDLE;
else
cur_state <= next_state;
end
// Update state sequencer.
// FSM would be completed when both a and b are low.
always @(cur_state) begin
case (cur_state)
IDLE : begin
if (b===0) next_state <= SA;
else next_state <= IDLE;
end
// if a is high and input b is low.
SA : begin
if (b===0) next_state <= IDLE;
else next_state <= SB;
end
// if a is low and input bend
endmodule
