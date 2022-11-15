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



always @(x or present_state)
begin
 case(present_state)
 ww0: if( ~x) present_state <= ww1;
 ww1: if( ~x) present_state <= ww2;
 ww2: if( ~x) present_state <= ww3;
 ww3: if( ~x) present_state <= IDLE;
 IDLE:if( ~x) present_state <= S1;
 default: present_state <= IDLE;
 endcase
end 
assign z = (present_state == IDLE)?0:1; 

// next state assignments
always @(present_state or x)
begin
 // present state is IDLE
 ww0: if( ~x) next_state <= ww1; 
 ww1: if( ~x)next_state <= wendmodule
