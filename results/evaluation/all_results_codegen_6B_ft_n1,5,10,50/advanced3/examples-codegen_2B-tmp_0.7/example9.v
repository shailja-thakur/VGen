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
    // reset=1 is asserted when x changes from 1 to 0
    if (x == 1 && reset == 0) {
        z <= 0;
        present_state <= IDLE;
    }
    // reset=0 is asserted when x changes from 0 to 1
    if (x == 0 && reset == 1) {
        z <= 1;
        present_state <= IDLE;
    }
    // reset is low during the startup process
    if (reset == 1)  {
        present_state <= IDLE;
    }
    
    // present_state=IDLE is when x is 0 and rset is low
    if (x == 0 && reset == 1) {
        z <= 0;
        present_state <= IDLE;
    }
    // present_state=IDLE is when x isend
endmodule
