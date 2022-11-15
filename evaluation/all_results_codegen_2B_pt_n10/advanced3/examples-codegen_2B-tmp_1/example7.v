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


note = {OFF, MS, SQUARE, TRIANGLE}; 
reg [6:0] note_period, notes, bpm;
reg [4:2] note_index, note_mask, note_pos;
reg [63:0] ndclks;


reg sf_next; 
reg [39:0] sf_sel;
// loop variables 
parameter mode = 2; 
constant wAmp = 5/7.5;
constant wSFx1000 = 0.275; // Half note 1kHz
constant wSFx400 = 0.558; // Quarter note 4kHZ
constant wSFx1000A = wSFx1000 * 16; // Quarter note 1kSF
constant wSFx400A = wSFx400 * 32; // Quarter note 4kSF
constant ndclks = 25endmodule
