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

 always @(present_state, reset, x)
 begin
 case(present_state)
 IDLE:
 case (reset)
 1'b0: next_state = IDLE;
 1'b1: next_state = S1;
 // x is deasserted only when succeeding circuit is ready
 // if othercircuit is ready, next_state stays at IDLE.
 // if other circuit is busy, next_state driven to occurs if waiting for other circuit to stop.
 if (!busy) next_state = x ? S1 : IDLE;
 // nolock till we add something to say not free to access the pool.
 end 
 S1:
 case (x)
 1'b0: next_state = S10;
 1'b1: next_state = IDLE;
 // x is asserted when trying cells left in current row when othercircuit waits to beendmodule
