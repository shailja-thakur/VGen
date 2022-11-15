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


always @(present_state or x) begin
case(present_state)	
IDLE : begin // Asynchronous reset
	if(reset) next_state=IDLE;
	else if(x) next_state=S1;	
	else next_state=IDLE;	
	end	

S1 : begin
	if(x) next_state=inertial_cal;
	else next_state=IDLE;
	
	end

S10 : begin
	if(reset) next_state=IDLE;
	else if(x) next_state=S1;
	else next_state=inertial_cal;
	end

S101 : begin
	
	if(reset) next_state=IDLE;
	else if(x);	
	else next_state=S10;
	end
endmodule
