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
// if input a and b both are low, state changes to IDLE. 
always @(posedge clk or posedge reset) begin: nstate
if (reset)
cur_state <= #1 IDLE;
else
cur_state <= #1 next_state;
end
// Combinatorial logic:
always @ (*) begin: combinatorial_logic
case(cur_state)
IDLE: begin
next_state <= #1 IDLE; 
next_state <= #1 (a && b) ? SA : IDLE;
on = 0;
z = z & a & b;
end
SA: begin
next_state <= #1 SA;
next_state <= #1 (a && b) ? SB : SA;
on = 1;
z = z & a & b;
end
SB: begin
next_state <= #1 IDLEend
end
endmodule
