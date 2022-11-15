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


// NOTE: the following FSM state machine has been designed to respond to the input x with a 1 when x is 1
// and a 0 when x is 0. The output z is asserted to 1 when x is 1 and is reset to 0 when x is 0.
// In the adv_fsm_4 state machine below, the next_state is assigned to the S101 state if x is 1, otherwise
// the next_state is assigned to the IDLE state.
// for the state machine below, next_state is assigned to the IDLE state when x is 0, otherwise the next_state
// is assigned to the S1 state when x is 1.
reg [4:0] adv_fsm_4;
parameter S1=1, S10=2, S101=4;
// output signal z is asserted to 1 when x is 1 and is reset to 0 when x is 0
//endmodule
