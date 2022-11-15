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
// Otherwise, if input a is high only, state changes to SA
// otherwise, if input b is high, state goes to SB
assign rst_shft = reset;
// applicable to both dynamic state machines and non-blocking flip flops 
assign a_yn = cur_state == SA & a;
assign b_yn = cur_state == SA & b;
shift_reg s0
sf_flipflop sl
dur_flipflop dl
endmodule
