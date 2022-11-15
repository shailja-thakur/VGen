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


// when rset is high: reset present_state to IDLE state
always @(posedge clk)begin 
if (reset) 
present_state <= IDLE;
else
present_state <= next_state;
end

// when x is high: take next_state as the specified state.
// when another source of a higher priority comes in, next_state takes the higher priority next time.
always @(*) 
case (present_state) 
IDLE:
if (x) 
next_state = S1;
else
next_state = IDLE; 

S1:
if (x) 
next_state = IDLE;
else
next_state = S10;

S10:
if (x) 
next_state = S101;
else
next_state = IDLE;

S101:
endmodule
