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
// If only a or b is asserted, output z is not asserted.
// Idle state is an internal reset.
always @(cur_state or a or b) begin
 if (cur_state == IDLE & endline) begin 
next_state = IDLE;
z=1'b0;
end
 case(cur_state)
 IDLE: begin
next_state = a ? aprog : b ? bprog : IDLE;
z=1'b0;
end
 aprog: begin
next_state = a ? aprog : b ? bprog : IDLE;
z=1'b0;
end
 bprog: begin
next_state = a ? IDLE : b ? bprog : aprog;
z=1'b0;
end
 SAB: begin
z=1'b1;
next_end
endmodule
