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


always @ gate_a  assign clk= x & active;
assign  reset=1;
assign  next_state=IDLE;
always @ gate_b  assign present_state=next_state;
always @ gate_c  assign present_state < 0 : present_state=IDLE;
when clock_fsm_half_cycle down1 & (active=1) ->    // transition from S101 to S1
    next_state = S1;
when clock_fsm_half_cycle up           ->    // transition from S1 to S10
    next_state= S10;
when clock_fsm_full_cycle x==1        ->    // continue as usual
    next_state = S10;
when clock_fsm_full_cycle x==0        ->    // use a fallthrough to go to idle
    next_endmodule
