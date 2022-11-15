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


always @(posedge clk or posedge reset) // stimulus block for present_state 
if (reset) 
	present_state <= IDLE; 
else 
	present_state <= next_state ; 
 //next_state can change immediately to IDLE for reset, but not other way
 //can't change during 0.23 seconds
always @(posedge clk or posedge reset) // stimulus block for z 
if (reset) 
	z <= 0; 
else if (present_state == S101) 
	z <= 1; 
else 
	z <= 0; 
initial //second half of forever loop
begin: flip_flop_init
	if (reset)
	begin 
	next_state = IDLE ; //Sets the initial state to be the IDLE 
	end 
	else if (present_stateend
endmodule
