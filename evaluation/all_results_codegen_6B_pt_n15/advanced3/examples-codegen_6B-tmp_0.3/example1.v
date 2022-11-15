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


// The following code is the testbench for the FSM.
// The input signal x is simulated by a counter with a period of 1ns.
// The output signal z is asserted to 1 when the FSM is in state S101.
// The FSM is reset to IDLE when the counter reaches 1.
// The FSM is reset to IDLE when the counter reaches 10.
// The FSM is reset to IDLE when the counter reaches 100.
// The FSM is reset to IDLE when the counter reaches 1000.
// The FSM is reset to IDLE when the counter reaches 10000.
// The FSM is reset to IDLE when the counter reaches 100000.
// The FSM is reset to IDLE when the counter reaches 1000000.
// The FSM is reset to IDLE when the counter reaches 10000000.
// The FSM is reset to IDLE when the counter reaches 100000000.endmodule
