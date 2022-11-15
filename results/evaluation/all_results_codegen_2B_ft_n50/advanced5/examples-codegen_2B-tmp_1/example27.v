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
// if input b only is high, then SAB is entered twice and the 
// cursor will advance to the next state while mominently 
// consisting of two SAB states.
always @(posedge clk or negedge reset)
if (!reset)
cur_state <= IDLE;
else
cur_state <= next_state;
always @(*)
begin
case(cur_state)
IDLE: if (a&b)
next_state <= SA;
else if (b) 
next_state <= IDLE;
else next_state <= SB;
una = cur_state = SA;
SB: if (a)
next_state <= IDLE;
else
begin
next_state <= SB;
ena = 2'b10;
end
endcase
end
// omit branch of default

// using always_ff only requires instantcing extra
endmodule
