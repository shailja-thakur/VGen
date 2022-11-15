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

 always@(present_state or x or reset) begin
 if(reset)
 next_state <= IDLE;
 // if rset, then reset the present state variable to IDLE.
 // output signallzing z as 1
 else case(present_state)
 IDLE: next_state <= (x ? S1 : IDLE);
 S1: next_state <= (x ? S1 : S10);
 S10: next_state <= (x ? S101 : IDLE);
 S101:next_state <= IDLE;
 default: next_state <= IDLE;
 endcase
 end
always@(present_state) begin
 case(present_state)
 IDLE: z <= 1;
 S1: z <= 1; 
 S10: z <= 0;
 S101: z <= 0; 
 default: z <= z;
 endcase
 end
endmodule
