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


//if reset is high, then present state = state 0, next state = state 0 from which it resets to IDLE 
assign up_down_count_1 = present_state==IDLE&&reset;
assign up_down_count_2 = present_state==S101&&reset;
assign up_down_count_1_1 = present_state==IDLE&&reset;
assign up_down_count_1_2 = present_state==S1&&reset;
assign next_state_1 = (present_state==IDLE&&x) ? S1 :
(present_state==S1 && x) ? S10 :
(present_state==S10&&x) ? S101:
IDLE;

// next state of state machine
always @(posedge clk or posedge reset)
begin
if (reset)
present_end
endmodule
