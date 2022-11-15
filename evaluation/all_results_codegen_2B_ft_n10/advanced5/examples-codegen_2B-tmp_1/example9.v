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
// if input a is high gain instead of offset, state is restored to IDLE.
// else kb_edge pattern is detected and the state changes accordingly.
always @ (posedge clk)
if (reset) 
cur_state <= IDLE;
else
cur_state <= next_state;
// Nested always block will "lift" the rising edge of a and b.
// kb_edge pattern, detect falling edge casuing transistion from SA to SB
always @ (negedge a or posedge b or negedge reset)
begin : nested_always
if ( reset == 1'b1 )
next_state <= IDLE;
else 
case ({cur_state,a,b})
3'b00: next_state <= IDLE;
3'b11: next_state <= IDLE;
2'b10: next_state <= SA;
2end
endmodule
