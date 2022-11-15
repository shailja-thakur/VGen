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


always begin
// perform startup operation
present_state <= S1;

// carry-rippling calculation for encoder input, assuming only -0.5 .. 0.5 values
// if x is more than 0.5 (clip, overdrive) make sure you use the repeat register to express new values 
// if x is less than -0.5 (discordance or underdrive) incorporate -0.5 into true/false at the end 
// (remember x - 0.5) was taken earlier to prepare input, no long lost in tmp_x
// (x_pre, x_tmp) are the same amount of distance apart unless the bigX is enabled, then x_tmp is farther out by 1/2
// because of this pre-truncation/post-truncation, original clip values mean post-clip values; i.e. missing .5 = .75,
// andend
endmodule
