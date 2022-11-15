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


reg [0:2] sabc_counter, fedc_counter;

//counter=0;
// 'case' for unsatisfied request
addressof arm resumed_counter;
initial arm_was_0=0;
initial arm_started_0=0;
initial csync_0=0;
initial tsync_0=0;

cont_inst arm(
addressof id, input f
memory_in 19
memory_out 20
input pending_1
input pending_0
input deep_0
output x, y, s, v
input loff, soff
memory_req a
);

cont_inst arm_locked(
resolved a, input w
input able_while_0
memory_if able_0
memory_req a
);

always_watchl _free [2:0] wakeup;

always_endmodule
