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

 //This is how this machine will work
 not (x_inverse, x); //inverse function : X must be 1 for output z to be 1
 and(s1_and, x, present_state[0]);
 and(s10_and, x_inverse, present_state[0]);
 and(s101_and, x_inverse,x_inverse, present_state[0]); 
 or(z,s1_and, s10_and, present_state[0]);
 always@(posedge clk)
 if(reset) present_state <= IDLE;
 else 
 begin
 case(present_state)
 IDLE: if(x)
 begin
 present_state <= S1;
 end
 else 
 present_state <= IDLE;
 S1: if(x)
 present_state <= IDLE;
 else 
 begin
end
end
endmodule
