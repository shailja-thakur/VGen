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


// set present state to given input value 
always @(posedge clk or posedge reset) begin 
    if (reset == 1)
        // reset states on reset 
        next_state <= IDLE; 
    else begin
        // rset accepts only one assert
        if (clk == 1) // posedge clk 0 is posedge reset 
        // after reset: assume we were IDLE 
        if (x == 1)
            next_state <= S1; 
        else
            next_state <= IDLE;
    end
end

always @(posedge clk or posedge reset) begin
    if (reset == 1) begin
        // reset states on reset 
        present_state <= IDLE;
    end
    else  
        // the next state if x=1 is next_state: changed state if clock is highend
endmodule
