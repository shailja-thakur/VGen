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
// if a or b is high, state changes to SIAB if a is LOW or SIA is HIGH.
// if a or b is NOT high, state changes to IDLE.
always @(cur_state or a or b) begin
	cur_state = next_state;
end
// State machine. Procedural assignment Has the following form:
// next_state = cur_state;
// The line below is a continuous assignment that generates a combinational circuit.
// output_z = cur_state == SAB ? 1 : (cur_state == SIA) ? 0 : (cur_state == IDLE) ? 1 : 0;
// It also has select lines that makes it into a Shift register.
// The shift register is used to generate the z output.
// It should be noted that cur_state and next_state are NOT LATCHED.
// It is assumed that any output isendmodule
