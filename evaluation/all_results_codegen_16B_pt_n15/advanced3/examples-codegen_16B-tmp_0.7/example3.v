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


always @(posedge clk) begin
  case(present_state)
    0: present_state <= IDLE;
    1: present_state <= S1;
    2: present_state <= S10;
    3: present_state <= S101;
    default: present_state <= IDLE;
  endcase
  // assign next_state to present_state
  case(present_state)
    IDLE: next_state <= S1;
    S1: next_state <= S10;
    S10: next_state <= S101;
    S101: next_state <= IDLE;
    default: next_state <= present_state;
  endcase
  // if present_state is IDLE, assign z to 1 if x is 1, otherwise assign z to 0
  if(present_state == IDLE)
    if (endmodule
