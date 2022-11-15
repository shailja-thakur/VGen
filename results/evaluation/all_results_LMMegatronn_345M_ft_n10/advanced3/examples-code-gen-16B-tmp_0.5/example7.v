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


always @(posedge clk)
if(reset)
present_state &lt;= IDLE;
else
present_state &lt;= next_state;

always @(present_state or x)
case(present_state)
IDLE: begin
if(x==1'b1)
next_state &lt;= S1;
else
next_state &lt;= IDLE;
end
S1: begin
if(x==1'b0)
next_state &lt;= S10;
else
next_state &lt;= IDLE;
end
S10: begin
if(x==1'b1)
next_state &lt;= S101;
else
next_state &lt;= IDLE;
end
S101: begin
next_state &lt;= IDLE;
end
endendmodule
