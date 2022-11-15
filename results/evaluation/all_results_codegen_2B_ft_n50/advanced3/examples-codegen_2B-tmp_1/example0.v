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

 
localparam 
INIT=0, IDLE=1, S1=2, S10=3, S101=4;

always@(*)
begin 
case(present_state)
INIT: present_state <= next_state;
IDLE: next_state <= (x)? S1 : IDLE;
S1: next_state <= (x)? S10 : IDLE;
S10: next_state <= (x)? IDLE : S101;
S101: next_state <= (x)? S1 : IDLE;
endcase
end
always@(*)
case(present_state)
S1: present_state <= INIT;
S10: present_state <= S1;
S101: present_state <= S9;
S9: present_state <= IDLE;
default: present_state <= S1;
endendmodule
