// This is a finite state machine that recognizes the sequence 101 on the input signal x. 
module adv_fsm(
input clk,
input reset,
input x,
output z ); 
reg [1:0] present_state, next_state;
parameter IDLE=0, S1=1, S10=2, S101=3;
// output signal z is asserted to 1 when present_state is S101 
// present_state is reset to IDLE when rset is high
// otherwise it is assigned next state
// if present_state is IDLE, next_state is assigned S1 if x is 1, otherwise next_state stays at IDLE
// if present_state is S1, next_state is assigned S10 if x is 0, otherwise next_state stays at IDLE 
// if present_state is S10, next_state is assigned S101 if x is 1, otherwise next_state stays at IDLE 
// if present_state is S101, next_state is assigned IDLE



always @(*)
begin
  if (++x) {
    za = z;
    z_next = S10; 
  } else {
    za = ~(not in);
    z_next = IDLE;
  } 
  const clk_1 = clk and clk_1;
  const clk_0 = ~clk and clk_0;
  in1 = clk_1;
  int_clock = ((clk_1 or in1) and --reset and input[5:0] == 101); 
  const reset_1 = reset and reset_1;
  if (reset and in1) { 
    present_state = IDLE;
  } else {
    if (z != in or reset_1) {
      present_state = IDLE;
    } else {
      next_end
endmodule
