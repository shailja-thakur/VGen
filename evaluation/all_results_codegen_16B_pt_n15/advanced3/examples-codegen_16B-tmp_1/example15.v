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

	always @( posedge clk or posedge reset ) 
// to detect a change in the present state
begin 
	if ( reset ) 
// if reset is high then 
	begin
// keep the next state as it is, IDLE if a new reset event occurs
// while present state is S101
// or keep it as it is if change in present state is not IDLE->IDLE
// to reset the next state

	present_state <= IDLE;
// keep the next_state as it is if change in present state is IDLE->IDLE and reset is high
	end
	else 
// if reset is not high then 
// assign the present_state to next_state
	begin
	present_state <= next_state;
	end
end 
// case statemachine for different states
	
	always @( present_state or x )endmodule
