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


always @( posedge clk ) 
if ( reset ) 
{ next_state[:] = IDLE; }
else if ( x == 1 ) ;
else if ( x == 0 ) ;
else 
{ if (  present_state <> IDLE )   // when past the line is false process goes to IDLE, reset = 0 
{ next_state[:] = IDLE; }         // in other words, the the previsous state 
{ next_state[:] = present_state; }  
}

always @( posedge clk ) 
if ( reset ) 
{ z[:] = 1; }
else if ( x == 1 )  // if the input to the state machine ASSERTED that feed has been delivered, it continues 
{ z[:] = present_state[0]; // into the next state, but this is different here endmodule
