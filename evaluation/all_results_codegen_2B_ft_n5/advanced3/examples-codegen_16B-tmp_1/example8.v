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
	begin 
	if(reset)
	present_state <= IDLE;
	else
	present_state <= next_state ;
	end 
	// IDLE is the initial/idle state
	// S1 is the state that detects a 1 in X 
	// S10 that detects a 0 in X and goes to S1
	// S101 is the state that detects 101 in X and goes to IDLE
	always @(*)
	begin 
	case (present_state)
	IDLE : begin
	if (x) next_state = S1;
	else next_state = IDLE;
	end
	S1 : begin
	if (!x) next_state = IDLE;
	else next_state = S10;
	end 
	S10 : begin
	if(xend
end
endmodule
