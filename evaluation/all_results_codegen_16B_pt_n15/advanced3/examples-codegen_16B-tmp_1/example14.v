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


task main()
{
  bool p1= true;
  while (true) 
  {
    clock [start=0, stop=30000000] clk;
    reset [ deactive=5, state_run=2, state_reset=7] reset;
    present_state [rw=1, 3] present_state;
    next_state [ rw=1, 2] next_state;
    always @(posedge clk)
    {
      // if RESET, IDLE, or S1, S10, proceed to S101
      // otherwise wait at 9.5 ns and start a new cycle
      p1 = reset && ! present_state[3:1] && (present_state==IDLE || present_state==S1 || present_state==S10);
      if (p1) {
        next_state[2:endmodule
