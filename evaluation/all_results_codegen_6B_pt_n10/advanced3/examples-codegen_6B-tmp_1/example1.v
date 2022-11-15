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


assign next_state = IDLE;
assign t1 = x;
assign t2 = t1;
assign t3 = t1;
begin
	if(reset == 0)
	begin
		next_state = IDLE;
		present_state = IDLE;
	end
else
	begin
		if(next_state == IDLE) // next_state indicates that no other transition was taken 
		begin
			if(x=0) // if RTM detects logic 0 upon input x, in the FSM IDLE state, then 
			then
				// it accepts transition S1 on signal x, the next state 
				// is assigned to S1 in shown code, next_state = S1 
				// next_state reflects the logic of the FSM IDLE 
				set_next_state(S1); // set next_stateend
end
end
endmodule
