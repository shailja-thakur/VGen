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
    if ((reset == 0) and (x == 1) and (present_state != IDLE))
        next_state = S1;
    else if ((reset == 0) and (x == 0) and (present_state == IDLE))
        next_state = S10;
    else if (present_state != IDLE)
        next_state = IDLE;
    else if ((reset == 0) and (x == 1))
        next_state = S101;
    else if ((reset == 0) and (x == 0))
        next_state = IDLE;
    else
    {
        next_state = IDLE;
        z = 1;
    }

reg [3:0] state_var;
always @(posedge clk)
    if (reset == 1)
        state_endmodule
