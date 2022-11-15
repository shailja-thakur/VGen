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


// S1 states
// when next_state is assigned RS, next_state stays at S1
// when next_state is assigned -1, next state is S1
always @(posedge) 
reg [1:0] {next_state : 0x00};
always @(posedge clk) 
{
    if (not reset) present_state = next_state;	// rotation -1 on reset/m_signal asserted
    next_state = 0b101;			// Dummy state assigned
    if((not present_state) or (present_state==S101)) 
        next_state = 0x00;			// IDLE
}

// S10 states
// when next_state is assigned RS, next_state stays at S10
// when next_state is assigned -1, next state is S10
always @(posedge gr)endmodule
