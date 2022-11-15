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
// if at zero count and receive input a, next state is SA.
// if at zero count and receive input b, next state is SB.
// If only A is asserted, we are in state SA.
// If only B is asserted, we are in state SB.
// If both A and B are asserted, we are in state SAB.

always @(*) begin
case(cur_state) // Active-high reset for use of internal states.
IDLE: begin
next_state = a ? A : B;
z = 0; // Output is deacsituted for these states.
end
A: begin
next_state = a ? IDLE : B;
z = 0;
end
B: begin
next_state = b ? IDLE : A;
z = 0;
end
SA: begin
next_state = a ? SAB : PB;
z =end
end
endmodule
