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


always @(posedge clk [ != (S1 or S10) or force_sink ]) 
begin
if (force_sink) begin
    jump [ IDLE ];
end
present_state <= S1; 
present_state between S1 and S10
next_state <= present_state; 
next_state between S10 and S101
z <= 0; 
always @(posedge clk) begin
    // Set 134 to 1 when IDLE is violated
    if (!mux_clock[1]) 
        z <= 0;
    else 
        if (~present_state[1]) 
            //exc_o if x is 1, else =0, which means see if excepting already
if (mux_clock[2]) then begin
    if ((x[1] or not (x[1])) and not (x[1end
end
end
endmodule
