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
//assign z = ((present_state == IDLE) && (x==0))? 1:0;
//assign z = (present_state == IDLE)? 1:0;
assign z = ((present_state == S1) && (x==0))? 1:0;
end
// always block to select next_state
always @(present_state,x)
begin
// assigns default values to next_state
next_state <= 2'b00;
case(present_state)
IDLE: if (x == 1)
	next_state <= S1;
S1: if (x == 0)
	next_state <= IDLE;
S10: if (x == 1)
	next_state <= S101;
S101: if(x == 0)
	next_stateend
endmodule
