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


reg [2:0] next_state_in;
reg [3:0] next_state_out;
reg [4:0] next_state_out_adv;

always @ (posedge clk or negedge reset) begin
    if (next_state_in == S1) begin
        if (x == 1) next_state_out = S10;
        else next_state_out = IDLE;
    end
    if (next_state_in == S10) begin
        if (x == 0) next_state_out_adv = S101;
        else next_state_out_adv = IDLE;
    end
    if (next_state_in == S101) begin
        next_state_out_adv = IDLE;
    end
    if (next_state_in == IDLE) begin
        ifend
end
endmodule
