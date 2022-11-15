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

 
always @(posedge clk) //always block to update present_state
begin
if(reset) //if reset is high, present_state is reset to IDLE
present_state <= IDLE;
else 
present_state <= next_state; //otheriwse the present state is assigned next state
end 

always @(x,present_state) // always block to compute next state
begin
next_state = IDLE; //initial state is set to IDLE
case(present_state) //case statement to compute next state
IDLE: if(x) next_state = S1; //if x is 1 next state is S1
S1: if(x) next_state = S10; //if x is 1 next state is S10
S10: if(x) next_state = S101; //if x is 1 next state is S101
Send
endmodule
